using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Unity2019.RNUnity2019
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNUnity2019Module : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNUnity2019Module"/>.
        /// </summary>
        internal RNUnity2019Module()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNUnity2019";
            }
        }
    }
}
