import { Html, Head, Main, NextScript } from 'next/document';

export default function Document() {
  return (
    <Html lang="en">
      <Head />
      <body className="bg-white text-gray-800 transition-colors duration-300 dark:bg-black dark:text-gray-100">
        <Main />
        <NextScript />
      </body>
    </Html>
  );
}
