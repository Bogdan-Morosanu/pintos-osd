#ifndef USERPROG_MORO_SYSCALLS_PROCESS_H
#define USERPROG_MORO_SYSCALLS_PROCESS_H

/// @brief exits current process with return
///        status RET_STS.
/// @pre Must be called from user process.
void exit_handler(int ret_sts);

#endif
