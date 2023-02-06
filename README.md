# azure-iot-edge-sandbox

## Build

### `./build`

```bash
$> npm run build
```

### `./dist/eflow.tar`

```bash
$> npm run dist
```

## EFLOW

### Deploy

```powershell
$> . ./scripts/deploy.ps1
```

#### un-`tar`

```bash
iotedge-user@{user} [ ~ ]$> sudo bash
```

```bash
root [ /home/iotedge-user ]$> mkdir -p eflow
root [ /home/iotedge-user ]$> tar -xf eflow.tar -C ./eflow
root [ /home/iotedge-user ]$> cd eflow
root [ /home/iotedge-user ]$> ls . -la
```

#### install

```bash
root [ /home/iotedge-user ]$> bash ./setup.ba.sh
```

## Resources

- [Create demo certificates to test IoT Edge device features](https://learn.microsoft.com/en-us/azure/iot-edge/how-to-create-test-certificates?view=iotedge-1.4&tabs=windows)
