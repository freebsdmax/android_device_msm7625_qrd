/*
 * Copyright (C) 2009 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


#include <stdint.h>
#include <sys/types.h>
#include <utils/Timers.h>
#include <utils/Errors.h>
#include <utils/KeyedVector.h>
#include </media/android_source2/CyanogenMod/system/device/qcom/msm7625_qrd/include/hardware_legacy/AudioPolicyManagerBase.h>


namespace android {

class AudioPolicyManager: public AudioPolicyManagerBase
{

public:
                AudioPolicyManager(AudioPolicyClientInterface *clientInterface)
                : AudioPolicyManagerBase(clientInterface) {}

        virtual ~AudioPolicyManager() {}

        virtual uint32_t getDeviceForStrategy(routing_strategy strategy, bool fromCache = true);

        // check that volume change is permitted, compute and send new volume to audio hardware
        virtual status_t checkAndSetVolume(int stream, int index, audio_io_handle_t output, uint32_t device, int delayMs = 0, bool force = false);

protected:
        // true is current platform implements a back microphone
        virtual bool hasBackMicrophone() const { return false; }
#ifdef WITH_A2DP
        // true is current platform supports suplication of notifications and ringtones over A2DP output
        virtual bool a2dpUsedForSonification() const { return true; }
#endif

};
};
