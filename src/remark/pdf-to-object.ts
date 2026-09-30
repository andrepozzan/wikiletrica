import type { Root, RootContent } from "mdast";
import type {
  MdxJsxAttribute,
  MdxJsxFlowElement,
} from "mdast-util-mdx-jsx";
import type { Plugin } from "unified";

const publicPdfUrl = (url: string) => {
  if (/^(?:[a-z]+:)?\/\//i.test(url) || url.startsWith("/")) {
    return url;
  }

  const [path, suffix = ""] = url.split(/([?#].*)/, 2);
  const filename = path.split("/").pop() || path;
  return `/wikiletrica/anexos/${filename}${suffix}`;
};

const pdfToObject: Plugin<[], Root> = () => (tree) => {
  const visitChildren = (children: RootContent[]) => {
    children.forEach((node, index) => {
      if (
        node.type === "image" &&
        /\.pdf(?:[?#].*)?$/i.test(node.url)
      ) {
        const url = publicPdfUrl(node.url);
        const attributes: MdxJsxAttribute[] = [
          { type: "mdxJsxAttribute", name: "data", value: url },
          {
            type: "mdxJsxAttribute",
            name: "type",
            value: "application/pdf",
          },
          { type: "mdxJsxAttribute", name: "width", value: "100%" },
          { type: "mdxJsxAttribute", name: "height", value: "900" },
        ];

        children[index] = {
          type: "mdxJsxFlowElement",
          name: "object",
          attributes,
          children: [],
        } as unknown as MdxJsxFlowElement as unknown as RootContent;
        return;
      }

      if ("children" in node) {
        visitChildren(node.children as RootContent[]);
      }
    });
  };

  visitChildren(tree.children);
};

export default pdfToObject;
