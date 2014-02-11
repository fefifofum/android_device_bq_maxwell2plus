/*
 $License:
   Copyright 2011 InvenSense, Inc.

 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
  $
 */

/******************************************************************************
 *
 * $Id: mlBiasNoMotion.h 6132 2011-10-01 03:17:27Z mcaramello $
 *
 *****************************************************************************/

#ifndef INV_BIAS_NO_MOTION_H__
#define INV_BIAS_NO_MOTION_H__

#include "mltypes.h"

#ifdef __cplusplus
extern "C" {
#endif

    inv_error_t inv_enable_bias_no_motion(void);
    inv_error_t inv_disable_bias_no_motion(void);
    inv_error_t inv_bias_nomot_is_enabled(unsigned char *is_enabled);

#ifdef __cplusplus
}
#endif
#endif                          // INV_BIAS_NO_MOTION_H__
