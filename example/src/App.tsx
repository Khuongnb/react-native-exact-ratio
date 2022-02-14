import React from 'react'
import { StyleSheet, Text, View } from 'react-native'
import { DeviceRatio } from 'react-native-exact-ratio'

const App = () => {
  React.useEffect(() => {
    console.log(DeviceRatio)
  }, [])

  return (
    <View style={styles.flexCentering}>
      <Text>Device Pixel Ratio: {DeviceRatio.density}</Text>
      <Text>Device DPI: {DeviceRatio.dpi}</Text>
    </View>
  )
}

export default App

const styles = StyleSheet.create({
  flexCentering: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
})
