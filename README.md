# react-native-exact-ratio
Get exact device density and ppi for [React Native](https://github.com/facebook/react-native).

React Native build-in PixelRatio can get device density using PixelRatio.get(), but the return value has been rounded.
This package will return the exact value of device density

### Installation
```shell
npm install --save react-native-exact-ratio
```

### Usage
```js
import { DeviceRatio } from 'react-native-exact-ratio'

console.log('Device Density:', DeviceRatio.density)
console.log('Device DPI:', DeviceRatio.dpi)
```

### Example
```shell
cd example
npm install && cd ios && pod install && cd ..
react-native run-ios
```

![ExampleImage](docs/example01.jpg)

### MIT Licensed
