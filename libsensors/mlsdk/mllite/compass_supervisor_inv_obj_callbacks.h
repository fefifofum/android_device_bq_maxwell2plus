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

/*******************************************************************************
 *
 * $Id: compass_supervisor_inv_obj_callbacks.h 5873 2011-08-11 03:13:48Z mcaramello $
 *
 ******************************************************************************/

#ifndef __INV_COMPASS_SUPERVISOR_LITE_CALLBACKS_H__
#define __INV_COMPASS_SUPERVISOR_LITE_CALLBACKS_H__

#include "mltypes.h"

inv_error_t inv_register_inv_obj_compass_supervisor_callbacks(void);
inv_error_t inv_unregister_inv_obj_compass_supervisor_callbacks(void);

#endif // __INV_COMPASS_SUPERVISOR_LITE_CALLBACKS_H__

