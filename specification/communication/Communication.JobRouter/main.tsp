// cheat-sheet - https://microsoft.github.io/typespec/standard-library/http/cheat-sheet
// tsp compile main.tsp --emit @azure-tools/typespec-autorest

import "@typespec/rest";
import "@typespec/http";
import "@typespec/versioning";
import "./routes.tsp";

using TypeSpec.Rest;
using TypeSpec.Http;
using TypeSpec.Versioning;

@service({
  title: "Azure Communication Routing Service",
})
@server(
  "{endpoint}",
  "Azure Communication Routing Service",
  {
    endpoint: string,
  }
)
@versioned(Versions)
@doc("Azure Communication Routing Service")
namespace AzureCommunicationRoutingService;
