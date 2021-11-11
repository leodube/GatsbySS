import * as React from "react";
import { ChakraProvider } from "@chakra-ui/react";

const IndexPage = () => {
  return (
    <ChakraProvider>
      <main>
        <h1>Hello World!</h1>
      </main>
    </ChakraProvider>
  );
};

export default IndexPage;
