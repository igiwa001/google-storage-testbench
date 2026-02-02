# google-storage-testbench

Unofficial docker image for googleapi's
[storage-testbench](https://github.com/googleapis/storage-testbench). Based on
the `python:3.13-slim` docker image.

Can be used to fake a local google storage service, useful for unit testing.

### Usage with testcontainers

```typescript
import { GenericContainer } from "testcontainers";
import { Storage } from "@google-cloud/storage";

const container = await new GenericContainer("igiwa001/google-storage-testbench:latest")
  .withExposedPorts(9000)
  .start();

const storage = new Storage({
  projectId: "test-project",
  apiEndpoint: `http://${container.getHost()}:${container.getMappedPort(9000)}`,
});
```
