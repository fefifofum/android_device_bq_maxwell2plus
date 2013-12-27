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
 * $Id: ml_mputest.h 6132 2011-10-01 03:17:27Z mcaramello $
 *
 *****************************************************************************/

#ifndef _INV_MPUTEST_H_
#define _INV_MPUTEST_H_

#ifdef __cplusplus
extern "C" {
#endif

#include "mltypes.h"
#include "ml_mputest_legacy.h"

/* user APIs */
inv_error_t inv_self_test_set_accel_z_orient(signed char z_sign);

inv_error_t inv_self_test_run(void);
inv_error_t inv_self_test_calibration_run(void);
inv_error_t inv_self_test_bias_run(void);
inv_error_t inv_self_test_accel_z_run(void);

/* other functions */
#define inv_set_self_test_parameters inv_set_test_parameters

#ifdef __cplusplus
}
#endif

#endif /* _INV_MPUTEST_H_ */

