
# react-native-unity

## Getting started

`$ npm install react-native-unity --save`

### Mostly automatic installation

`$ react-native link react-native-unity`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-unity` and add `RNUnity2019.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNUnity2019.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNUnity2019Package;` to the imports at the top of the file
  - Add `new RNUnity2019Package()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-unity2019'
  	project(':react-native-unity2019').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-unity2019/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-unity2019')
  	```


## Usage
```javascript
import RNUnityView from 'react-native-unity';

<RNUnityView style={{width:300, height: 400}} />
```
  