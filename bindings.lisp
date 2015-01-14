;;; This file was automatically generated by SWIG (http://www.swig.org).
;;; Version 3.0.4
;;;
;;; Do not make changes to this file unless you know what you are doing--modify
;;; the SWIG interface file instead.

(in-package :libuv)

(cffi:defcenum #.(lispify "__socket_type" 'enumname)
	(#.(lispify "SOCK_STREAM" 'enumvalue :keyword) #.1)
	(#.(lispify "SOCK_DGRAM" 'enumvalue :keyword) #.2)
	(#.(lispify "SOCK_RAW" 'enumvalue :keyword) #.3)
	(#.(lispify "SOCK_RDM" 'enumvalue :keyword) #.4)
	(#.(lispify "SOCK_SEQPACKET" 'enumvalue :keyword) #.5)
	(#.(lispify "SOCK_DCCP" 'enumvalue :keyword) #.6)
	(#.(lispify "SOCK_PACKET" 'enumvalue :keyword) #.10)
	(#.(lispify "SOCK_CLOEXEC" 'enumvalue :keyword) #.#o2000000)
	(#.(lispify "SOCK_NONBLOCK" 'enumvalue :keyword) #.#o4000))

(cffi:defcenum #.(lispify "tcp_ca_state" 'enumname)
	(#.(lispify "TCP_CA_Open" 'enumvalue :keyword) #.0)
	(#.(lispify "TCP_CA_Disorder" 'enumvalue :keyword) #.1)
	(#.(lispify "TCP_CA_CWR" 'enumvalue :keyword) #.2)
	(#.(lispify "TCP_CA_Recovery" 'enumvalue :keyword) #.3)
	(#.(lispify "TCP_CA_Loss" 'enumvalue :keyword) #.4))

(cffi:defcenum #.(lispify "uv_run_mode" 'enumname)
	(#.(lispify "UV_RUN_DEFAULT" 'enumvalue :keyword) #.0)
	#.(lispify "UV_RUN_ONCE" 'enumvalue :keyword)
	#.(lispify "UV_RUN_NOWAIT" 'enumvalue :keyword))

(cffi:defcfun ("uv_version" #.(lispify "uv_version" 'function)) :unsigned-int)

(cffi:defcfun ("uv_version_string" #.(lispify "uv_version_string" 'function)) :string)

(cffi:defcfun ("uv_default_loop" #.(lispify "uv_default_loop" 'function)) :pointer)

(cffi:defcfun ("uv_loop_init" #.(lispify "uv_loop_init" 'function)) :int
  (loop :pointer))

(cffi:defcfun ("uv_loop_close" #.(lispify "uv_loop_close" 'function)) :int
  (loop :pointer))

(cffi:defcfun ("uv_loop_new" #.(lispify "uv_loop_new" 'function)) :pointer)

(cffi:defcfun ("uv_loop_delete" #.(lispify "uv_loop_delete" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("uv_loop_size" #.(lispify "uv_loop_size" 'function)) :pointer)

(cffi:defcfun ("uv_loop_alive" #.(lispify "uv_loop_alive" 'function)) :int
  (loop :pointer))

(cffi:defcfun ("uv_run" #.(lispify "uv_run" 'function)) :int
  (arg0 :pointer)
  (mode #.(lispify "uv_run_mode" 'enumname)))

(cffi:defcfun ("uv_stop" #.(lispify "uv_stop" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("uv_ref" #.(lispify "uv_ref" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("uv_unref" #.(lispify "uv_unref" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("uv_has_ref" #.(lispify "uv_has_ref" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("uv_update_time" #.(lispify "uv_update_time" 'function)) :void
  (arg0 :pointer))

(cffi:defcfun ("uv_now" #.(lispify "uv_now" 'function)) ssize-t
  (arg0 :pointer))

(cffi:defcfun ("uv_backend_fd" #.(lispify "uv_backend_fd" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("uv_backend_timeout" #.(lispify "uv_backend_timeout" 'function)) :int
  (arg0 :pointer))

(cffi:defcenum #.(lispify "uv_membership" 'enumname)
	(#.(lispify "UV_LEAVE_GROUP" 'enumvalue :keyword) #.0)
	#.(lispify "UV_JOIN_GROUP" 'enumvalue :keyword))

(cffi:defcfun ("uv_strerror" #.(lispify "uv_strerror" 'function)) :string
  (err :int))

(cffi:defcfun ("uv_err_name" #.(lispify "uv_err_name" 'function)) :string
  (err :int))

(cffi:defcfun ("uv_shutdown" #.(lispify "uv_shutdown" 'function)) :int
  (req :pointer)
  (handle :pointer)
  (cb :pointer))

(cffi:defcfun ("uv_handle_size" #.(lispify "uv_handle_size" 'function)) :pointer
  (type uv-handle-type))

(cffi:defcfun ("uv_req_size" #.(lispify "uv_req_size" 'function)) :pointer
  (type uv-req-type))

(cffi:defcfun ("uv_is_active" #.(lispify "uv_is_active" 'function)) :int
  (handle :pointer))

(cffi:defcfun ("uv_walk" #.(lispify "uv_walk" 'function)) :void
  (loop :pointer)
  (walk_cb :pointer)
  (arg :pointer))

(cffi:defcfun ("uv_close" #.(lispify "uv_close" 'function)) :void
  (handle :pointer)
  (close_cb :pointer))

(cffi:defcfun ("uv_send_buffer_size" #.(lispify "uv_send_buffer_size" 'function)) :int
  (handle :pointer)
  (value :pointer))

(cffi:defcfun ("uv_recv_buffer_size" #.(lispify "uv_recv_buffer_size" 'function)) :int
  (handle :pointer)
  (value :pointer))

(cffi:defcfun ("uv_fileno" #.(lispify "uv_fileno" 'function)) :int
  (handle :pointer)
  (fd :pointer))

(cffi:defcfun ("uv_listen" #.(lispify "uv_listen" 'function)) :int
  (stream :pointer)
  (backlog :int)
  (cb :pointer))

(cffi:defcfun ("uv_accept" #.(lispify "uv_accept" 'function)) :int
  (server :pointer)
  (client :pointer))

(cffi:defcfun ("uv_read_start" #.(lispify "uv_read_start" 'function)) :int
  (arg0 :pointer)
  (alloc_cb :pointer)
  (read_cb :pointer))

(cffi:defcfun ("uv_read_stop" #.(lispify "uv_read_stop" 'function)) :int
  (arg0 :pointer))

(cffi:defcfun ("uv_write" #.(lispify "uv_write" 'function)) :int
  (req :pointer)
  (handle :pointer)
  (bufs :pointer)
  (nbufs :unsigned-int)
  (cb :pointer))

(cffi:defcfun ("uv_write2" #.(lispify "uv_write2" 'function)) :int
  (req :pointer)
  (handle :pointer)
  (bufs :pointer)
  (nbufs :unsigned-int)
  (send_handle :pointer)
  (cb :pointer))

(cffi:defcfun ("uv_try_write" #.(lispify "uv_try_write" 'function)) :int
  (handle :pointer)
  (bufs :pointer)
  (nbufs :unsigned-int))

(cffi:defcfun ("uv_is_readable" #.(lispify "uv_is_readable" 'function)) :int
  (handle :pointer))

(cffi:defcfun ("uv_is_writable" #.(lispify "uv_is_writable" 'function)) :int
  (handle :pointer))

(cffi:defcfun ("uv_stream_set_blocking" #.(lispify "uv_stream_set_blocking" 'function)) :int
  (handle :pointer)
  (blocking :int))

(cffi:defcfun ("uv_is_closing" #.(lispify "uv_is_closing" 'function)) :int
  (handle :pointer))

(cffi:defcfun ("uv_tcp_init" #.(lispify "uv_tcp_init" 'function)) :int
  (arg0 :pointer)
  (handle :pointer))

(cffi:defcfun ("uv_tcp_open" #.(lispify "uv_tcp_open" 'function)) :int
  (handle :pointer)
  (sock :int))

(cffi:defcfun ("uv_tcp_nodelay" #.(lispify "uv_tcp_nodelay" 'function)) :int
  (handle :pointer)
  (enable :int))

(cffi:defcfun ("uv_tcp_keepalive" #.(lispify "uv_tcp_keepalive" 'function)) :int
  (handle :pointer)
  (enable :int)
  (delay :unsigned-int))

(cffi:defcfun ("uv_tcp_simultaneous_accepts" #.(lispify "uv_tcp_simultaneous_accepts" 'function)) :int
  (handle :pointer)
  (enable :int))

(cffi:defcfun ("uv_tcp_bind" #.(lispify "uv_tcp_bind" 'function)) :int
  (handle :pointer)
  (addr :pointer)
  (flags :unsigned-int))

(cffi:defcfun ("uv_tcp_getsockname" #.(lispify "uv_tcp_getsockname" 'function)) :int
  (handle :pointer)
  (name :pointer)
  (namelen :pointer))

(cffi:defcfun ("uv_tcp_getpeername" #.(lispify "uv_tcp_getpeername" 'function)) :int
  (handle :pointer)
  (name :pointer)
  (namelen :pointer))

(cffi:defcfun ("uv_tcp_connect" #.(lispify "uv_tcp_connect" 'function)) :int
  (req :pointer)
  (handle :pointer)
  (addr :pointer)
  (cb :pointer))

(cffi:defcfun ("uv_udp_init" #.(lispify "uv_udp_init" 'function)) :int
  (arg0 :pointer)
  (handle :pointer))

(cffi:defcfun ("uv_udp_open" #.(lispify "uv_udp_open" 'function)) :int
  (handle :pointer)
  (sock :int))

(cffi:defcfun ("uv_udp_bind" #.(lispify "uv_udp_bind" 'function)) :int
  (handle :pointer)
  (addr :pointer)
  (flags :unsigned-int))

(cffi:defcfun ("uv_udp_getsockname" #.(lispify "uv_udp_getsockname" 'function)) :int
  (handle :pointer)
  (name :pointer)
  (namelen :pointer))

(cffi:defcfun ("uv_udp_set_membership" #.(lispify "uv_udp_set_membership" 'function)) :int
  (handle :pointer)
  (multicast_addr :string)
  (interface_addr :string)
  (membership #.(lispify "uv_membership" 'enumname)))

(cffi:defcfun ("uv_udp_set_multicast_loop" #.(lispify "uv_udp_set_multicast_loop" 'function)) :int
  (handle :pointer)
  (on :int))

(cffi:defcfun ("uv_udp_set_multicast_ttl" #.(lispify "uv_udp_set_multicast_ttl" 'function)) :int
  (handle :pointer)
  (ttl :int))

(cffi:defcfun ("uv_udp_set_multicast_interface" #.(lispify "uv_udp_set_multicast_interface" 'function)) :int
  (handle :pointer)
  (interface_addr :string))

(cffi:defcfun ("uv_udp_set_broadcast" #.(lispify "uv_udp_set_broadcast" 'function)) :int
  (handle :pointer)
  (on :int))

(cffi:defcfun ("uv_udp_set_ttl" #.(lispify "uv_udp_set_ttl" 'function)) :int
  (handle :pointer)
  (ttl :int))

(cffi:defcfun ("uv_udp_send" #.(lispify "uv_udp_send" 'function)) :int
  (req :pointer)
  (handle :pointer)
  (bufs :pointer)
  (nbufs :unsigned-int)
  (addr :pointer)
  (send_cb :pointer))

(cffi:defcfun ("uv_udp_try_send" #.(lispify "uv_udp_try_send" 'function)) :int
  (handle :pointer)
  (bufs :pointer)
  (nbufs :unsigned-int)
  (addr :pointer))

(cffi:defcfun ("uv_udp_recv_start" #.(lispify "uv_udp_recv_start" 'function)) :int
  (handle :pointer)
  (alloc_cb :pointer)
  (recv_cb :pointer))

(cffi:defcfun ("uv_udp_recv_stop" #.(lispify "uv_udp_recv_stop" 'function)) :int
  (handle :pointer))

(cffi:defcfun ("uv_tty_init" #.(lispify "uv_tty_init" 'function)) :int
  (arg0 :pointer)
  (arg1 :pointer)
  (fd :int)
  (readable :int))

(cffi:defcfun ("uv_tty_set_mode" #.(lispify "uv_tty_set_mode" 'function)) :int
  (arg0 :pointer)
  (mode :int))

(cffi:defcfun ("uv_tty_reset_mode" #.(lispify "uv_tty_reset_mode" 'function)) :int)

(cffi:defcfun ("uv_tty_get_winsize" #.(lispify "uv_tty_get_winsize" 'function)) :int
  (arg0 :pointer)
  (width :pointer)
  (height :pointer))

(cffi:defcfun ("uv_guess_handle" #.(lispify "uv_guess_handle" 'function)) :pointer
  (file :int))

(cffi:defcfun ("uv_pipe_init" #.(lispify "uv_pipe_init" 'function)) :int
  (arg0 :pointer)
  (handle :pointer)
  (ipc :int))

(cffi:defcfun ("uv_pipe_open" #.(lispify "uv_pipe_open" 'function)) :int
  (arg0 :pointer)
  (file :int))

(cffi:defcfun ("uv_pipe_bind" #.(lispify "uv_pipe_bind" 'function)) :int
  (handle :pointer)
  (name :string))

(cffi:defcfun ("uv_pipe_connect" #.(lispify "uv_pipe_connect" 'function)) :void
  (req :pointer)
  (handle :pointer)
  (name :string)
  (cb :pointer))

(cffi:defcfun ("uv_pipe_getsockname" #.(lispify "uv_pipe_getsockname" 'function)) :int
  (handle :pointer)
  (buf :string)
  (len :pointer))

(cffi:defcfun ("uv_pipe_pending_instances" #.(lispify "uv_pipe_pending_instances" 'function)) :void
  (handle :pointer)
  (count :int))

(cffi:defcfun ("uv_pipe_pending_count" #.(lispify "uv_pipe_pending_count" 'function)) :int
  (handle :pointer))

(cffi:defcfun ("uv_pipe_pending_type" #.(lispify "uv_pipe_pending_type" 'function)) :pointer
  (handle :pointer))

(cffi:defcfun ("uv_poll_init" #.(lispify "uv_poll_init" 'function)) :int
  (loop :pointer)
  (handle :pointer)
  (fd :int))

(cffi:defcfun ("uv_poll_init_socket" #.(lispify "uv_poll_init_socket" 'function)) :int
  (loop :pointer)
  (handle :pointer)
  (socket :int))

(cffi:defcfun ("uv_poll_start" #.(lispify "uv_poll_start" 'function)) :int
  (handle :pointer)
  (events :int)
  (cb :pointer))

(cffi:defcfun ("uv_poll_stop" #.(lispify "uv_poll_stop" 'function)) :int
  (handle :pointer))

(cffi:defcfun ("uv_prepare_init" #.(lispify "uv_prepare_init" 'function)) :int
  (arg0 :pointer)
  (prepare :pointer))

(cffi:defcfun ("uv_prepare_start" #.(lispify "uv_prepare_start" 'function)) :int
  (prepare :pointer)
  (cb :pointer))

(cffi:defcfun ("uv_prepare_stop" #.(lispify "uv_prepare_stop" 'function)) :int
  (prepare :pointer))

(cffi:defcfun ("uv_check_init" #.(lispify "uv_check_init" 'function)) :int
  (arg0 :pointer)
  (check :pointer))

(cffi:defcfun ("uv_check_start" #.(lispify "uv_check_start" 'function)) :int
  (check :pointer)
  (cb :pointer))

(cffi:defcfun ("uv_check_stop" #.(lispify "uv_check_stop" 'function)) :int
  (check :pointer))

(cffi:defcfun ("uv_idle_init" #.(lispify "uv_idle_init" 'function)) :int
  (arg0 :pointer)
  (idle :pointer))

(cffi:defcfun ("uv_idle_start" #.(lispify "uv_idle_start" 'function)) :int
  (idle :pointer)
  (cb :pointer))

(cffi:defcfun ("uv_idle_stop" #.(lispify "uv_idle_stop" 'function)) :int
  (idle :pointer))

(cffi:defcfun ("uv_async_init" #.(lispify "uv_async_init" 'function)) :int
  (arg0 :pointer)
  (async :pointer)
  (async_cb :pointer))

(cffi:defcfun ("uv_async_send" #.(lispify "uv_async_send" 'function)) :int
  (async :pointer))

(cffi:defcfun ("uv_timer_init" #.(lispify "uv_timer_init" 'function)) :int
  (arg0 :pointer)
  (handle :pointer))

(cffi:defcfun ("uv_timer_start" #.(lispify "uv_timer_start" 'function)) :int
  (handle :pointer)
  (cb :pointer)
  (timeout uint64-t)
  (repeat uint64-t))

(cffi:defcfun ("uv_timer_stop" #.(lispify "uv_timer_stop" 'function)) :int
  (handle :pointer))

(cffi:defcfun ("uv_timer_again" #.(lispify "uv_timer_again" 'function)) :int
  (handle :pointer))

(cffi:defcfun ("uv_timer_set_repeat" #.(lispify "uv_timer_set_repeat" 'function)) :void
  (handle :pointer)
  (repeat uint64-t))

(cffi:defcfun ("uv_timer_get_repeat" #.(lispify "uv_timer_get_repeat" 'function)) ssize-t
  (handle :pointer))

(cffi:defcfun ("uv_getaddrinfo" #.(lispify "uv_getaddrinfo" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (getaddrinfo_cb :pointer)
  (node :string)
  (service :string)
  (hints :pointer))

(cffi:defcfun ("uv_freeaddrinfo" #.(lispify "uv_freeaddrinfo" 'function)) :void
  (ai :pointer))

(cffi:defcfun ("uv_getnameinfo" #.(lispify "uv_getnameinfo" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (getnameinfo_cb :pointer)
  (addr :pointer)
  (flags :int))

(cffi:defcenum #.(lispify "uv_stdio_flags" 'enumname)
	(#.(lispify "UV_IGNORE" 'enumvalue :keyword) #.#x00)
	(#.(lispify "UV_CREATE_PIPE" 'enumvalue :keyword) #.#x01)
	(#.(lispify "UV_INHERIT_FD" 'enumvalue :keyword) #.#x02)
	(#.(lispify "UV_INHERIT_STREAM" 'enumvalue :keyword) #.#x04)
	(#.(lispify "UV_READABLE_PIPE" 'enumvalue :keyword) #.#x10)
	(#.(lispify "UV_WRITABLE_PIPE" 'enumvalue :keyword) #.#x20))

(cffi:defcstruct #.(lispify "uv_stdio_container_t" 'classname)
	(#.(lispify "flags" 'slotname) #.(lispify "uv_stdio_flags" 'enumname))
	(#.(lispify "data" 'slotname) :pointer))

(cffi:defcunion #.(lispify "uv_stdio_container_s_data" 'classname)
	(#.(lispify "stream" 'slotname) :pointer)
	(#.(lispify "fd" 'slotname) :int))

(cffi:defcstruct #.(lispify "uv_process_options_t" 'classname)
	(#.(lispify "exit_cb" 'slotname) :pointer)
	(#.(lispify "file" 'slotname) :string)
	(#.(lispify "args" 'slotname) :pointer)
	(#.(lispify "env" 'slotname) :pointer)
	(#.(lispify "cwd" 'slotname) :string)
	(#.(lispify "flags" 'slotname) :unsigned-int)
	(#.(lispify "stdio_count" 'slotname) :int)
	(#.(lispify "stdio" 'slotname) :pointer)
	(#.(lispify "uid" 'slotname) uv-uid-t)
	(#.(lispify "gid" 'slotname) uv-gid-t))

(cffi:defcfun ("uv_spawn" #.(lispify "uv_spawn" 'function)) :int
  (loop :pointer)
  (handle :pointer)
  (options :pointer))

(cffi:defcfun ("uv_process_kill" #.(lispify "uv_process_kill" 'function)) :int
  (arg0 :pointer)
  (signum :int))

(cffi:defcfun ("uv_kill" #.(lispify "uv_kill" 'function)) :int
  (pid :int)
  (signum :int))

(cffi:defcfun ("uv_queue_work" #.(lispify "uv_queue_work" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (work_cb :pointer)
  (after_work_cb :pointer))

(cffi:defcfun ("uv_cancel" #.(lispify "uv_cancel" 'function)) :int
  (req :pointer))

(cffi:defcstruct #.(lispify "uv_cpu_times_s" 'classname)
	(#.(lispify "user" 'slotname) uint64-t)
	(#.(lispify "nice" 'slotname) uint64-t)
	(#.(lispify "sys" 'slotname) uint64-t)
	(#.(lispify "idle" 'slotname) uint64-t)
	(#.(lispify "irq" 'slotname) uint64-t))

(cffi:defcunion #.(lispify "uv_interface_address_s_netmask" 'classname)
	(#.(lispify "netmask4" 'slotname) :pointer)
	(#.(lispify "netmask6" 'slotname) :pointer))

(cffi:defcunion #.(lispify "uv_interface_address_s_address" 'classname)
	(#.(lispify "address4" 'slotname) :pointer)
	(#.(lispify "address6" 'slotname) :pointer))

(cffi:defcenum #.(lispify "uv_dirent_type_t" 'enumname)
	#.(lispify "UV_DIRENT_UNKNOWN" 'enumvalue :keyword)
	#.(lispify "UV_DIRENT_FILE" 'enumvalue :keyword)
	#.(lispify "UV_DIRENT_DIR" 'enumvalue :keyword)
	#.(lispify "UV_DIRENT_LINK" 'enumvalue :keyword)
	#.(lispify "UV_DIRENT_FIFO" 'enumvalue :keyword)
	#.(lispify "UV_DIRENT_SOCKET" 'enumvalue :keyword)
	#.(lispify "UV_DIRENT_CHAR" 'enumvalue :keyword)
	#.(lispify "UV_DIRENT_BLOCK" 'enumvalue :keyword))

(cffi:defcfun ("uv_setup_args" #.(lispify "uv_setup_args" 'function)) :pointer
  (argc :int)
  (argv :pointer))

(cffi:defcfun ("uv_get_process_title" #.(lispify "uv_get_process_title" 'function)) :int
  (buffer :string)
  (size size-t))

(cffi:defcfun ("uv_set_process_title" #.(lispify "uv_set_process_title" 'function)) :int
  (title :string))

(cffi:defcfun ("uv_resident_set_memory" #.(lispify "uv_resident_set_memory" 'function)) :int
  (rss :pointer))

(cffi:defcfun ("uv_uptime" #.(lispify "uv_uptime" 'function)) :int
  (uptime :pointer))

(cffi:defcstruct #.(lispify "uv_timeval_t" 'classname)
	(#.(lispify "tv_sec" 'slotname) :long)
	(#.(lispify "tv_usec" 'slotname) :long))

(cffi:defcstruct #.(lispify "uv_rusage_t" 'classname)
	(#.(lispify "ru_utime" 'slotname) #.(lispify "uv_timeval_t" 'classname-wrap))
	(#.(lispify "ru_stime" 'slotname) #.(lispify "uv_timeval_t" 'classname-wrap))
	(#.(lispify "ru_maxrss" 'slotname) uint64-t)
	(#.(lispify "ru_ixrss" 'slotname) uint64-t)
	(#.(lispify "ru_idrss" 'slotname) uint64-t)
	(#.(lispify "ru_isrss" 'slotname) uint64-t)
	(#.(lispify "ru_minflt" 'slotname) uint64-t)
	(#.(lispify "ru_majflt" 'slotname) uint64-t)
	(#.(lispify "ru_nswap" 'slotname) uint64-t)
	(#.(lispify "ru_inblock" 'slotname) uint64-t)
	(#.(lispify "ru_oublock" 'slotname) uint64-t)
	(#.(lispify "ru_msgsnd" 'slotname) uint64-t)
	(#.(lispify "ru_msgrcv" 'slotname) uint64-t)
	(#.(lispify "ru_nsignals" 'slotname) uint64-t)
	(#.(lispify "ru_nvcsw" 'slotname) uint64-t)
	(#.(lispify "ru_nivcsw" 'slotname) uint64-t))

(cffi:defcfun ("uv_getrusage" #.(lispify "uv_getrusage" 'function)) :int
  (rusage :pointer))

(cffi:defcfun ("uv_cpu_info" #.(lispify "uv_cpu_info" 'function)) :int
  (cpu_infos :pointer)
  (count :pointer))

(cffi:defcfun ("uv_free_cpu_info" #.(lispify "uv_free_cpu_info" 'function)) :void
  (cpu_infos :pointer)
  (count :int))

(cffi:defcfun ("uv_interface_addresses" #.(lispify "uv_interface_addresses" 'function)) :int
  (addresses :pointer)
  (count :pointer))

(cffi:defcfun ("uv_free_interface_addresses" #.(lispify "uv_free_interface_addresses" 'function)) :void
  (addresses :pointer)
  (count :int))

(cffi:defcfun ("uv_fs_req_cleanup" #.(lispify "uv_fs_req_cleanup" 'function)) :void
  (req :pointer))

(cffi:defcfun ("uv_fs_close" #.(lispify "uv_fs_close" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (file :int)
  (cb :pointer))

(cffi:defcfun ("uv_fs_open" #.(lispify "uv_fs_open" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (path :string)
  (flags :int)
  (mode :int)
  (cb :pointer))

(cffi:defcfun ("uv_fs_read" #.(lispify "uv_fs_read" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (file :int)
  (bufs :pointer)
  (nbufs :unsigned-int)
  (offset size-t)
  (cb :pointer))

(cffi:defcfun ("uv_fs_unlink" #.(lispify "uv_fs_unlink" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (path :string)
  (cb :pointer))

(cffi:defcfun ("uv_fs_write" #.(lispify "uv_fs_write" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (file :int)
  (bufs :pointer)
  (nbufs :unsigned-int)
  (offset size-t)
  (cb :pointer))

(cffi:defcfun ("uv_fs_mkdir" #.(lispify "uv_fs_mkdir" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (path :string)
  (mode :int)
  (cb :pointer))

(cffi:defcfun ("uv_fs_mkdtemp" #.(lispify "uv_fs_mkdtemp" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (tpl :string)
  (cb :pointer))

(cffi:defcfun ("uv_fs_rmdir" #.(lispify "uv_fs_rmdir" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (path :string)
  (cb :pointer))

(cffi:defcfun ("uv_fs_scandir" #.(lispify "uv_fs_scandir" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (path :string)
  (flags :int)
  (cb :pointer))

(cffi:defcfun ("uv_fs_scandir_next" #.(lispify "uv_fs_scandir_next" 'function)) :int
  (req :pointer)
  (ent :pointer))

(cffi:defcfun ("uv_fs_stat" #.(lispify "uv_fs_stat" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (path :string)
  (cb :pointer))

(cffi:defcfun ("uv_fs_fstat" #.(lispify "uv_fs_fstat" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (file :int)
  (cb :pointer))

(cffi:defcfun ("uv_fs_rename" #.(lispify "uv_fs_rename" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (path :string)
  (new_path :string)
  (cb :pointer))

(cffi:defcfun ("uv_fs_fsync" #.(lispify "uv_fs_fsync" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (file :int)
  (cb :pointer))

(cffi:defcfun ("uv_fs_fdatasync" #.(lispify "uv_fs_fdatasync" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (file :int)
  (cb :pointer))

(cffi:defcfun ("uv_fs_ftruncate" #.(lispify "uv_fs_ftruncate" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (file :int)
  (offset size-t)
  (cb :pointer))

(cffi:defcfun ("uv_fs_sendfile" #.(lispify "uv_fs_sendfile" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (out_fd :int)
  (in_fd :int)
  (in_offset size-t)
  (length size-t)
  (cb :pointer))

(cffi:defcfun ("uv_fs_access" #.(lispify "uv_fs_access" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (path :string)
  (mode :int)
  (cb :pointer))

(cffi:defcfun ("uv_fs_chmod" #.(lispify "uv_fs_chmod" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (path :string)
  (mode :int)
  (cb :pointer))

(cffi:defcfun ("uv_fs_utime" #.(lispify "uv_fs_utime" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (path :string)
  (atime :double)
  (mtime :double)
  (cb :pointer))

(cffi:defcfun ("uv_fs_futime" #.(lispify "uv_fs_futime" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (file :int)
  (atime :double)
  (mtime :double)
  (cb :pointer))

(cffi:defcfun ("uv_fs_lstat" #.(lispify "uv_fs_lstat" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (path :string)
  (cb :pointer))

(cffi:defcfun ("uv_fs_link" #.(lispify "uv_fs_link" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (path :string)
  (new_path :string)
  (cb :pointer))

(cl:defconstant #.(lispify "UV_FS_SYMLINK_DIR" 'constant) #x0001)

(cl:defconstant #.(lispify "UV_FS_SYMLINK_JUNCTION" 'constant) #x0002)

(cffi:defcfun ("uv_fs_symlink" #.(lispify "uv_fs_symlink" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (path :string)
  (new_path :string)
  (flags :int)
  (cb :pointer))

(cffi:defcfun ("uv_fs_readlink" #.(lispify "uv_fs_readlink" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (path :string)
  (cb :pointer))

(cffi:defcfun ("uv_fs_fchmod" #.(lispify "uv_fs_fchmod" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (file :int)
  (mode :int)
  (cb :pointer))

(cffi:defcfun ("uv_fs_chown" #.(lispify "uv_fs_chown" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (path :string)
  (uid uv-uid-t)
  (gid uv-gid-t)
  (cb :pointer))

(cffi:defcfun ("uv_fs_fchown" #.(lispify "uv_fs_fchown" 'function)) :int
  (loop :pointer)
  (req :pointer)
  (file :int)
  (uid uv-uid-t)
  (gid uv-gid-t)
  (cb :pointer))

(cffi:defcfun ("uv_fs_poll_init" #.(lispify "uv_fs_poll_init" 'function)) :int
  (loop :pointer)
  (handle :pointer))

(cffi:defcfun ("uv_fs_poll_start" #.(lispify "uv_fs_poll_start" 'function)) :int
  (handle :pointer)
  (poll_cb :pointer)
  (path :string)
  (interval :unsigned-int))

(cffi:defcfun ("uv_fs_poll_stop" #.(lispify "uv_fs_poll_stop" 'function)) :int
  (handle :pointer))

(cffi:defcfun ("uv_fs_poll_getpath" #.(lispify "uv_fs_poll_getpath" 'function)) :int
  (handle :pointer)
  (buf :string)
  (len :pointer))

(cffi:defcstruct #.(lispify "uv_signal_s_tree_entry_s" 'classname)
	(#.(lispify "rbe_left" 'slotname) :pointer)
	(#.(lispify "rbe_right" 'slotname) :pointer)
	(#.(lispify "rbe_parent" 'slotname) :pointer)
	(#.(lispify "rbe_color" 'slotname) :int))

(cffi:defcfun ("uv_signal_init" #.(lispify "uv_signal_init" 'function)) :int
  (loop :pointer)
  (handle :pointer))

(cffi:defcfun ("uv_signal_start" #.(lispify "uv_signal_start" 'function)) :int
  (handle :pointer)
  (signal_cb :pointer)
  (signum :int))

(cffi:defcfun ("uv_signal_stop" #.(lispify "uv_signal_stop" 'function)) :int
  (handle :pointer))

(cffi:defcfun ("uv_loadavg" #.(lispify "uv_loadavg" 'function)) :void
  (avg :pointer))

(cffi:defcfun ("uv_fs_event_init" #.(lispify "uv_fs_event_init" 'function)) :int
  (loop :pointer)
  (handle :pointer))

(cffi:defcfun ("uv_fs_event_start" #.(lispify "uv_fs_event_start" 'function)) :int
  (handle :pointer)
  (cb :pointer)
  (path :string)
  (flags :unsigned-int))

(cffi:defcfun ("uv_fs_event_stop" #.(lispify "uv_fs_event_stop" 'function)) :int
  (handle :pointer))

(cffi:defcfun ("uv_fs_event_getpath" #.(lispify "uv_fs_event_getpath" 'function)) :int
  (handle :pointer)
  (buf :string)
  (len :pointer))

(cffi:defcfun ("uv_ip4_addr" #.(lispify "uv_ip4_addr" 'function)) :int
  (ip :string)
  (port :int)
  (addr :pointer))

(cffi:defcfun ("uv_ip6_addr" #.(lispify "uv_ip6_addr" 'function)) :int
  (ip :string)
  (port :int)
  (addr :pointer))

(cffi:defcfun ("uv_ip4_name" #.(lispify "uv_ip4_name" 'function)) :int
  (src :pointer)
  (dst :string)
  (size size-t))

(cffi:defcfun ("uv_ip6_name" #.(lispify "uv_ip6_name" 'function)) :int
  (src :pointer)
  (dst :string)
  (size size-t))

(cffi:defcfun ("uv_inet_ntop" #.(lispify "uv_inet_ntop" 'function)) :int
  (af :int)
  (src :pointer)
  (dst :string)
  (size size-t))

(cffi:defcfun ("uv_inet_pton" #.(lispify "uv_inet_pton" 'function)) :int
  (af :int)
  (src :string)
  (dst :pointer))

(cffi:defcfun ("uv_exepath" #.(lispify "uv_exepath" 'function)) :int
  (buffer :string)
  (size :pointer))

(cffi:defcfun ("uv_cwd" #.(lispify "uv_cwd" 'function)) :int
  (buffer :string)
  (size :pointer))

(cffi:defcfun ("uv_chdir" #.(lispify "uv_chdir" 'function)) :int
  (dir :string))

(cffi:defcfun ("uv_get_free_memory" #.(lispify "uv_get_free_memory" 'function)) ssize-t)

(cffi:defcfun ("uv_get_total_memory" #.(lispify "uv_get_total_memory" 'function)) ssize-t)

(cffi:defcfun ("uv_hrtime" #.(lispify "uv_hrtime" 'function)) ssize-t)

(cffi:defcfun ("uv_disable_stdio_inheritance" #.(lispify "uv_disable_stdio_inheritance" 'function)) :void)

(cffi:defcfun ("uv_dlopen" #.(lispify "uv_dlopen" 'function)) :int
  (filename :string)
  (lib :pointer))

(cffi:defcfun ("uv_dlclose" #.(lispify "uv_dlclose" 'function)) :void
  (lib :pointer))

(cffi:defcfun ("uv_dlsym" #.(lispify "uv_dlsym" 'function)) :int
  (lib :pointer)
  (name :string)
  (ptr :pointer))

(cffi:defcfun ("uv_dlerror" #.(lispify "uv_dlerror" 'function)) :string
  (lib :pointer))

(cffi:defcfun ("uv_mutex_init" #.(lispify "uv_mutex_init" 'function)) :int
  (handle :pointer))

(cffi:defcfun ("uv_mutex_destroy" #.(lispify "uv_mutex_destroy" 'function)) :void
  (handle :pointer))

(cffi:defcfun ("uv_mutex_lock" #.(lispify "uv_mutex_lock" 'function)) :void
  (handle :pointer))

(cffi:defcfun ("uv_mutex_trylock" #.(lispify "uv_mutex_trylock" 'function)) :int
  (handle :pointer))

(cffi:defcfun ("uv_mutex_unlock" #.(lispify "uv_mutex_unlock" 'function)) :void
  (handle :pointer))

(cffi:defcfun ("uv_rwlock_init" #.(lispify "uv_rwlock_init" 'function)) :int
  (rwlock :pointer))

(cffi:defcfun ("uv_rwlock_destroy" #.(lispify "uv_rwlock_destroy" 'function)) :void
  (rwlock :pointer))

(cffi:defcfun ("uv_rwlock_rdlock" #.(lispify "uv_rwlock_rdlock" 'function)) :void
  (rwlock :pointer))

(cffi:defcfun ("uv_rwlock_tryrdlock" #.(lispify "uv_rwlock_tryrdlock" 'function)) :int
  (rwlock :pointer))

(cffi:defcfun ("uv_rwlock_rdunlock" #.(lispify "uv_rwlock_rdunlock" 'function)) :void
  (rwlock :pointer))

(cffi:defcfun ("uv_rwlock_wrlock" #.(lispify "uv_rwlock_wrlock" 'function)) :void
  (rwlock :pointer))

(cffi:defcfun ("uv_rwlock_trywrlock" #.(lispify "uv_rwlock_trywrlock" 'function)) :int
  (rwlock :pointer))

(cffi:defcfun ("uv_rwlock_wrunlock" #.(lispify "uv_rwlock_wrunlock" 'function)) :void
  (rwlock :pointer))

(cffi:defcfun ("uv_sem_init" #.(lispify "uv_sem_init" 'function)) :int
  (sem :pointer)
  (value :unsigned-int))

(cffi:defcfun ("uv_sem_destroy" #.(lispify "uv_sem_destroy" 'function)) :void
  (sem :pointer))

(cffi:defcfun ("uv_sem_post" #.(lispify "uv_sem_post" 'function)) :void
  (sem :pointer))

(cffi:defcfun ("uv_sem_wait" #.(lispify "uv_sem_wait" 'function)) :void
  (sem :pointer))

(cffi:defcfun ("uv_sem_trywait" #.(lispify "uv_sem_trywait" 'function)) :int
  (sem :pointer))

(cffi:defcfun ("uv_cond_init" #.(lispify "uv_cond_init" 'function)) :int
  (cond :pointer))

(cffi:defcfun ("uv_cond_destroy" #.(lispify "uv_cond_destroy" 'function)) :void
  (cond :pointer))

(cffi:defcfun ("uv_cond_signal" #.(lispify "uv_cond_signal" 'function)) :void
  (cond :pointer))

(cffi:defcfun ("uv_cond_broadcast" #.(lispify "uv_cond_broadcast" 'function)) :void
  (cond :pointer))

(cffi:defcfun ("uv_barrier_init" #.(lispify "uv_barrier_init" 'function)) :int
  (barrier :pointer)
  (count :unsigned-int))

(cffi:defcfun ("uv_barrier_destroy" #.(lispify "uv_barrier_destroy" 'function)) :void
  (barrier :pointer))

(cffi:defcfun ("uv_barrier_wait" #.(lispify "uv_barrier_wait" 'function)) :int
  (barrier :pointer))

(cffi:defcfun ("uv_cond_wait" #.(lispify "uv_cond_wait" 'function)) :void
  (cond :pointer)
  (mutex :pointer))

(cffi:defcfun ("uv_cond_timedwait" #.(lispify "uv_cond_timedwait" 'function)) :int
  (cond :pointer)
  (mutex :pointer)
  (timeout uint64-t))

(cffi:defcfun ("uv_once" #.(lispify "uv_once" 'function)) :void
  (guard :pointer)
  (callback :pointer))

(cffi:defcfun ("uv_key_create" #.(lispify "uv_key_create" 'function)) :int
  (key :pointer))

(cffi:defcfun ("uv_key_delete" #.(lispify "uv_key_delete" 'function)) :void
  (key :pointer))

(cffi:defcfun ("uv_key_get" #.(lispify "uv_key_get" 'function)) :pointer
  (key :pointer))

(cffi:defcfun ("uv_key_set" #.(lispify "uv_key_set" 'function)) :void
  (key :pointer)
  (value :pointer))

(cffi:defcfun ("uv_thread_create" #.(lispify "uv_thread_create" 'function)) :int
  (tid :pointer)
  (entry :pointer)
  (arg :pointer))

(cffi:defcfun ("uv_thread_self" #.(lispify "uv_thread_self" 'function)) :unsigned-long)

(cffi:defcfun ("uv_thread_join" #.(lispify "uv_thread_join" 'function)) :int
  (tid :pointer))

(cffi:defcfun ("uv_thread_equal" #.(lispify "uv_thread_equal" 'function)) :int
  (t1 :pointer)
  (t2 :pointer))

(cffi:defcunion #.(lispify "uv_any_handle" 'classname)
	(#.(lispify "async" 'slotname) :pointer)
	(#.(lispify "check" 'slotname) :pointer)
	(#.(lispify "fs_event" 'slotname) :pointer)
	(#.(lispify "fs_poll" 'slotname) :pointer)
	(#.(lispify "handle" 'slotname) :pointer)
	(#.(lispify "idle" 'slotname) :pointer)
	(#.(lispify "pipe" 'slotname) :pointer)
	(#.(lispify "poll" 'slotname) :pointer)
	(#.(lispify "prepare" 'slotname) :pointer)
	(#.(lispify "process" 'slotname) :pointer)
	(#.(lispify "stream" 'slotname) :pointer)
	(#.(lispify "tcp" 'slotname) :pointer)
	(#.(lispify "timer" 'slotname) :pointer)
	(#.(lispify "tty" 'slotname) :pointer)
	(#.(lispify "udp" 'slotname) :pointer)
	(#.(lispify "signal" 'slotname) :pointer))

(cffi:defcunion #.(lispify "uv_any_req" 'classname)
	(#.(lispify "req" 'slotname) :pointer)
	(#.(lispify "connect" 'slotname) :pointer)
	(#.(lispify "write" 'slotname) :pointer)
	(#.(lispify "shutdown" 'slotname) :pointer)
	(#.(lispify "udp_send" 'slotname) :pointer)
	(#.(lispify "fs" 'slotname) :pointer)
	(#.(lispify "work" 'slotname) :pointer)
	(#.(lispify "getaddrinfo" 'slotname) :pointer)
	(#.(lispify "getnameinfo" 'slotname) :pointer))

(cffi:defcstruct #.(lispify "uv_loop_s_timer_heap" 'classname)
	(#.(lispify "min" 'slotname) :pointer)
	(#.(lispify "nelts" 'slotname) :unsigned-int))

