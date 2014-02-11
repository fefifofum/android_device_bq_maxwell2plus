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
 * $Id: int.h 5629 2011-06-11 03:13:08Z mcaramello $
 *
 *******************************************************************************/

#ifndef _INT_H
#define _INT_H

#include "mltypes.h"
#include "mpu.h"

#ifdef __cplusplus
extern "C" {
#endif

    /* ------------ */
    /* - Defines. - */
    /* ------------ */

    /* ---------- */
    /* - Enums. - */
    /* ---------- */

    /* --------------- */
    /* - Structures. - */
    /* --------------- */

    /* --------------------- */
    /* - Function p-types. - */
    /* --------------------- */

    void IntOpen(const char **ints,
                 int *handles,
                 int numHandles);
    int IntProcess(int *handles, int numHandles,
                   struct mpuirq_data **data, 
                   long tv_sec, long tv_usec);
    inv_error_t IntClose(int *handles, int numHandles);
    inv_error_t IntSetTimeout(int handle, int timeout);

#ifdef __cplusplus
}
#endif

#endif /* _TEMPLATE_H */
