# Copyright 2023 gRPC authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto generated by tools/codegen/core/gen_experiments.py

"""Dictionary of tags to experiments so we know when to test different experiments."""

EXPERIMENT_ENABLES = {
    "backoff_cap_initial_at_max": "backoff_cap_initial_at_max",
    "call_tracer_in_transport": "call_tracer_in_transport",
    "call_tracer_transport_fix": "call_tracer_transport_fix",
    "callv3_client_auth_filter": "callv3_client_auth_filter",
    "chaotic_good_framing_layer": "chaotic_good_framing_layer",
    "error_flatten": "error_flatten",
    "event_engine_client": "event_engine_client",
    "event_engine_dns": "event_engine_dns",
    "event_engine_dns_non_client_channel": "event_engine_dns_non_client_channel",
    "event_engine_fork": "event_engine_fork",
    "event_engine_listener": "event_engine_listener",
    "event_engine_callback_cq": "event_engine_callback_cq,event_engine_client,event_engine_listener",
    "event_engine_for_all_other_endpoints": "event_engine_client,event_engine_dns,event_engine_dns_non_client_channel,event_engine_for_all_other_endpoints,event_engine_listener",
    "free_large_allocator": "free_large_allocator",
    "keep_alive_ping_timer_batch": "keep_alive_ping_timer_batch",
    "local_connector_secure": "local_connector_secure",
    "max_pings_wo_data_throttle": "max_pings_wo_data_throttle",
    "monitoring_experiment": "monitoring_experiment",
    "multiping": "multiping",
    "pollset_alternative": "event_engine_client,event_engine_listener,pollset_alternative",
    "posix_ee_skip_grpc_init": "posix_ee_skip_grpc_init",
    "promise_based_http2_client_transport": "promise_based_http2_client_transport",
    "promise_based_http2_server_transport": "promise_based_http2_server_transport",
    "promise_based_inproc_transport": "promise_based_inproc_transport",
    "retry_in_callv3": "retry_in_callv3",
    "rq_fast_reject": "rq_fast_reject",
    "rst_stream_fix": "rst_stream_fix",
    "schedule_cancellation_over_write": "schedule_cancellation_over_write",
    "server_listener": "server_listener",
    "tcp_frame_size_tuning": "tcp_frame_size_tuning",
    "tcp_rcv_lowat": "tcp_rcv_lowat",
    "unconstrained_max_quota_buffer_size": "unconstrained_max_quota_buffer_size",
}

EXPERIMENT_POLLERS = [
    "event_engine_client",
    "event_engine_dns",
    "event_engine_dns_non_client_channel",
    "event_engine_fork",
    "event_engine_listener",
    "event_engine_for_all_other_endpoints",
]

EXPERIMENTS = {
    "windows": {
        "dbg": {
        },
        "off": {
            "core_end2end_test": [
                "callv3_client_auth_filter",
                "error_flatten",
                "event_engine_dns_non_client_channel",
                "event_engine_fork",
                "local_connector_secure",
                "pollset_alternative",
                "retry_in_callv3",
            ],
            "cpp_end2end_test": [
                "error_flatten",
            ],
            "endpoint_test": [
                "tcp_frame_size_tuning",
                "tcp_rcv_lowat",
            ],
            "event_engine_fork_test": [
                "event_engine_fork",
            ],
            "flow_control_test": [
                "multiping",
                "tcp_frame_size_tuning",
                "tcp_rcv_lowat",
            ],
            "resource_quota_test": [
                "free_large_allocator",
                "unconstrained_max_quota_buffer_size",
            ],
            "xds_end2end_test": [
                "error_flatten",
            ],
        },
        "on": {
            "cancel_ares_query_test": [
                "event_engine_dns",
            ],
            "core_end2end_test": [
                "chaotic_good_framing_layer",
                "event_engine_client",
                "event_engine_for_all_other_endpoints",
                "event_engine_listener",
                "posix_ee_skip_grpc_init",
                "server_listener",
            ],
            "cpp_end2end_test": [
                "posix_ee_skip_grpc_init",
            ],
            "event_engine_client_test": [
                "event_engine_client",
            ],
            "event_engine_listener_test": [
                "event_engine_listener",
            ],
            "resolver_component_tests_runner_invoker": [
                "event_engine_dns",
            ],
            "xds_end2end_test": [
                "server_listener",
            ],
        },
    },
    "ios": {
        "dbg": {
        },
        "off": {
            "core_end2end_test": [
                "callv3_client_auth_filter",
                "error_flatten",
                "event_engine_dns_non_client_channel",
                "event_engine_fork",
                "local_connector_secure",
                "pollset_alternative",
                "retry_in_callv3",
            ],
            "cpp_end2end_test": [
                "error_flatten",
            ],
            "endpoint_test": [
                "tcp_frame_size_tuning",
                "tcp_rcv_lowat",
            ],
            "event_engine_fork_test": [
                "event_engine_fork",
            ],
            "flow_control_test": [
                "multiping",
                "tcp_frame_size_tuning",
                "tcp_rcv_lowat",
            ],
            "resource_quota_test": [
                "free_large_allocator",
                "unconstrained_max_quota_buffer_size",
            ],
            "xds_end2end_test": [
                "error_flatten",
            ],
        },
        "on": {
            "core_end2end_test": [
                "chaotic_good_framing_layer",
                "event_engine_for_all_other_endpoints",
                "posix_ee_skip_grpc_init",
                "server_listener",
            ],
            "cpp_end2end_test": [
                "posix_ee_skip_grpc_init",
            ],
            "xds_end2end_test": [
                "server_listener",
            ],
        },
    },
    "posix": {
        "dbg": {
        },
        "off": {
            "core_end2end_test": [
                "callv3_client_auth_filter",
                "error_flatten",
                "event_engine_dns_non_client_channel",
                "event_engine_fork",
                "local_connector_secure",
                "pollset_alternative",
                "retry_in_callv3",
            ],
            "cpp_end2end_test": [
                "error_flatten",
            ],
            "endpoint_test": [
                "tcp_frame_size_tuning",
                "tcp_rcv_lowat",
            ],
            "event_engine_fork_test": [
                "event_engine_fork",
            ],
            "flow_control_test": [
                "multiping",
                "tcp_frame_size_tuning",
                "tcp_rcv_lowat",
            ],
            "resource_quota_test": [
                "free_large_allocator",
                "unconstrained_max_quota_buffer_size",
            ],
            "xds_end2end_test": [
                "error_flatten",
            ],
        },
        "on": {
            "cancel_ares_query_test": [
                "event_engine_dns",
            ],
            "core_end2end_test": [
                "chaotic_good_framing_layer",
                "event_engine_client",
                "event_engine_for_all_other_endpoints",
                "event_engine_listener",
                "posix_ee_skip_grpc_init",
                "server_listener",
            ],
            "cpp_end2end_test": [
                "posix_ee_skip_grpc_init",
            ],
            "event_engine_client_test": [
                "event_engine_client",
            ],
            "event_engine_listener_test": [
                "event_engine_listener",
            ],
            "resolver_component_tests_runner_invoker": [
                "event_engine_dns",
            ],
            "xds_end2end_test": [
                "server_listener",
            ],
        },
    },
}
