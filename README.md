# Fuji Weather Example

Sends Fuji Mt. weather via Robonomics Network

## Build

```
nix build -f release.nix
```

## Launch

```
source result/setup.bash
roslaunch fuji_weather agent.launch openweathermap_api_key:=<API_KEY>
```

