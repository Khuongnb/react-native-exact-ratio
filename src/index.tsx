import DeviceRatioModule from './device'

type DeviceConstants = {
  density: number
  dpi: number
}

export const DeviceRatio: DeviceConstants = DeviceRatioModule.getConstants()
