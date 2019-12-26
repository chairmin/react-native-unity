
# react-native-unity

    Now only supports iOS, Android will also support in the future.

![](https://github.com/chairmin/react-native-unity/blob/master/README-1.png?raw=true)

## Requirements

[Unity 2019.3.0a3+](https://unity.com/)

[React Native 0.60](https://facebook.github.io/react-native/)

## Getting started (iOS)

### Install library react-native-unity

```
npm install react-native-unity --save
react-native link react-native-unity
```

#### Manual installation

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-unity` and add `RNUnity2019.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNUnity2019.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`

### Project setting

1. Create **UnityProject** with Unity 2019.3.0a3 +
2. Open **UnityProject** folder in Unity and export the project to the folder UnityProject and save as ios.
3. Add ios project(from step 2) to your workspace
4. Update items required for use with UnityFramework.framework (these steps are required any time you re-export your ios project from Unity):
    - Add UnityFramework.framework to Embedded Binaries
        - add Unity-iPhone/Products/UnityFramework.framework to Embedded Binaries (this will also add as Linked Framework, which we remove next step)
        - remove UnityFramework.framework from Linked Frameworks and Libraries ( select it and press "-" )
    - Select Unity-iPhone / Libraries / Plugins / iOS / NativeCallProxy.h and enable UnityFramework in Target Membership and set Public**
    - Select Unity-iPhone / Data and swap Target Membership to UnityFramework from Unity-iPhone**
4. Set "Header Search Path" of libRNUnity2019.a under the Pods project to point to UnityFramework.framework
5. Run your project (`Cmd+R`)<

## Usage

```javascript
import RNUnityView from 'react-native-unity';

<RNUnityView style={{width:300, height: 400}} />
```
  