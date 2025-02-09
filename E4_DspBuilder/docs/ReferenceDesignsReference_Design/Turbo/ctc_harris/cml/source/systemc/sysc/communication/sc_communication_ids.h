/*****************************************************************************

  The following code is derived, directly or indirectly, from the SystemC
  source code Copyright (c) 1996-2005 by all Contributors.
  All Rights reserved.

  The contents of this file are subject to the restrictions and limitations
  set forth in the SystemC Open Source License Version 2.4 (the "License");
  You may not use this file except in compliance with such restrictions and
  limitations. You may obtain instructions on how to receive a copy of the
  License at http://www.systemc.org/. Software distributed by Contributors
  under the License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF
  ANY KIND, either express or implied. See the License for the specific
  language governing rights and limitations under the License.

 *****************************************************************************/

/*****************************************************************************

  sc_communication_ids.h -- Report ids for the communication code.

  Original Author: Martin Janssen, Synopsys, Inc., 2002-01-17

 *****************************************************************************/

/*****************************************************************************

  MODIFICATION LOG - modifiers, enter your name, affiliation, date and
  changes you are making here.

      Name, Affiliation, Date:
  Description of Modification:
    
 *****************************************************************************/

/* 
$Log: sc_communication_ids.h,v $
Revision 1.1  2007/04/03 10:50:14  zpan
systemC 2.1 lib

Revision 1.1  2005/10/07 11:21:31  zpan
updated to 2.1.1 for 6.0

Revision 1.12  2005/04/03 22:52:51  acg
Namespace changes.

Revision 1.11  2005/03/21 22:31:32  acg
Changes to sc_core namespace.

Revision 1.10  2004/10/28 00:21:48  acg
Added check that sc_export instances are not bound twice.

Revision 1.9  2004/09/27 21:02:54  acg
Andy Goodrich - Forte Design Systems, Inc.
   - Added a $Log comment so that CVS checkin comments will appear in
     checked out source.

*/

#ifndef SC_COMMUNICATION_IDS_H
#define SC_COMMUNICATION_IDS_H


#include "sysc/utils/sc_report.h"


// ----------------------------------------------------------------------------
//  Report ids (communication)
//
//  Report ids in the range of 100-199.
// ----------------------------------------------------------------------------

#ifndef SC_DEFINE_MESSAGE
#define SC_DEFINE_MESSAGE(id,unused1,unused2) \
    namespace sc_core { extern const char id[]; }
namespace sc_core {
    extern const char SC_ID_REGISTER_ID_FAILED_[]; // in sc_report_handler.cpp
} // namespace sc_core
#endif

SC_DEFINE_MESSAGE( SC_ID_PORT_OUTSIDE_MODULE_, 100,
			"port specified outside of module" )
SC_DEFINE_MESSAGE( SC_ID_CLOCK_PERIOD_ZERO_, 101,
			"sc_clock period is zero" )              
SC_DEFINE_MESSAGE( SC_ID_CLOCK_HIGH_TIME_ZERO_, 102,
			"sc_clock high time is zero" )    
SC_DEFINE_MESSAGE( SC_ID_CLOCK_LOW_TIME_ZERO_, 103,
			"sc_clock low time is zero" )     
SC_DEFINE_MESSAGE( SC_ID_MORE_THAN_ONE_FIFO_READER_, 104,
			"sc_fifo<T> cannot have more than one reader" )
SC_DEFINE_MESSAGE( SC_ID_MORE_THAN_ONE_FIFO_WRITER_, 105,
			"sc_fifo<T> cannot have more than one writer" )
SC_DEFINE_MESSAGE( SC_ID_INVALID_FIFO_SIZE_, 106,
			"sc_fifo<T> must have a size of at least 1" )
SC_DEFINE_MESSAGE( SC_ID_BIND_IF_TO_PORT_, 107,
			"bind interface to port failed" ) 
SC_DEFINE_MESSAGE( SC_ID_BIND_PORT_TO_PORT_, 108,
			"bind parent port to port failed" )
SC_DEFINE_MESSAGE( SC_ID_COMPLETE_BINDING_, 109,
			"complete binding failed" )
SC_DEFINE_MESSAGE( SC_ID_INSERT_PORT_, 110,
			"insert port failed" )
SC_DEFINE_MESSAGE( SC_ID_REMOVE_PORT_, 111,
			"remove port failed" )
SC_DEFINE_MESSAGE( SC_ID_GET_IF_, 112,
			"get interface failed" )
SC_DEFINE_MESSAGE( SC_ID_INSERT_PRIM_CHANNEL_, 113,
			"insert primitive channel failed" )
SC_DEFINE_MESSAGE( SC_ID_REMOVE_PRIM_CHANNEL_, 114, 
			"remove primitive channel failed" ) 
SC_DEFINE_MESSAGE( SC_ID_MORE_THAN_ONE_SIGNAL_DRIVER_, 115,
			"sc_signal<T> cannot have more than one driver" )
SC_DEFINE_MESSAGE( SC_ID_NO_DEFAULT_EVENT_,    116,
			"channel doesn't have a default event" )
SC_DEFINE_MESSAGE( SC_ID_RESOLVED_PORT_NOT_BOUND_, 117,
			"resolved port not bound to resolved signal" )
SC_DEFINE_MESSAGE( SC_ID_FIND_EVENT_, 118,
			"find event failed" )
SC_DEFINE_MESSAGE( SC_ID_INVALID_SEMAPHORE_VALUE_,  119,
			"sc_semaphore requires an initial value >= 0" )
SC_DEFINE_MESSAGE( SC_ID_SC_EXPORT_HAS_NO_INTERFACE_,  120,
			"sc_export instance has no interface" )
SC_DEFINE_MESSAGE( SC_ID_SC_EXPORT_AFTER_START_,  121,
			"insert sc_export failed, sc_export instance after simulation has started" )
SC_DEFINE_MESSAGE( SC_ID_SC_EXPORT_ALREADY_REGISTERED_,  122,
			"insert sc_export failed, sc_export already inserted" )
SC_DEFINE_MESSAGE( SC_ID_SC_EXPORT_NOT_REGISTERED_,  123,
			"remove sc_export failed, sc_export not registered" )
SC_DEFINE_MESSAGE( SC_ID_SC_EXPORT_NOT_BOUND_AFTER_CONSTRUCTION_,  124,
			"sc_export instance not bound to interface at end of construction" )
SC_DEFINE_MESSAGE( SC_ID_ATTEMPT_TO_WRITE_TO_CLOCK_,  125,
			"attempt to write the value of an sc_clock instance" )
SC_DEFINE_MESSAGE( SC_ID_SC_EXPORT_ALREADY_BOUND_,  126,
                    "sc_export instance already bound" )
SC_DEFINE_MESSAGE( SC_ID_OPERATION_ON_NON_SPECIALIZED_SIGNAL_,  127,
			"attempted specalized signal operation on non-specialized signal" )

#endif

// Taf!
