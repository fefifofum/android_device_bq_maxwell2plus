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
 * $Id: mlsupervisor.h 5844 2011-08-05 17:32:54Z kkeal $
 *
 *****************************************************************************/

#ifndef __INV_SUPERVISOR_H__
#define __INV_SUPERVISOR_H__

#include "mltypes.h"
#ifdef INV_INCLUDE_LEGACY_HEADERS
#include "mlsupervisor_legacy.h"
#endif

#define CAL_RUN             0
#define CAL_RESET           1
#define CAL_CHANGED_DATA    2
#define CAL_RESET_TIME      3
#define CAL_ADD_DATA        4
#define CAL_COMBINE         5

#define P_INIT  100000L

#define SF_NORMAL           0
#define SF_DISTURBANCE      1
#define SF_FAST_SETTLE      2
#define SF_SLOW_SETTLE      3
#define SF_STARTUP_SETTLE   4
#define SF_UNCALIBRATED     5

void inv_init_sensor_fusion_supervisor(void);
inv_error_t inv_accel_compass_supervisor(void);
inv_error_t inv_pressure_supervisor(void);

#endif // __INV_SUPERVISOR_H__

