#![allow(unused_imports)]

use prost::Message;
use rinf::{
    debug_print, send_rust_signal, signal_channel,
    DartSignal, SignalReceiver, SignalSender,
};
use std::sync::LazyLock;


// @generated
// This file is @generated by prost-build.
/// \[DART-SIGNAL\]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CmccAccountGenerateInput {
    #[prost(string, tag="1")]
    pub phone: ::prost::alloc::string::String,
}
/// \[RUST-SIGNAL\]
#[allow(clippy::derive_partial_eq_without_eq)]
#[derive(Clone, PartialEq, ::prost::Message)]
pub struct CmccAccountGenerateOutput {
    #[prost(string, tag="1")]
    pub account: ::prost::alloc::string::String,
}
// @@protoc_insertion_point(module)

type CMCCAccountGenerateInputChannel = LazyLock<(
    SignalSender<DartSignal<CmccAccountGenerateInput>>,
    SignalReceiver<DartSignal<CmccAccountGenerateInput>>,
)>;
pub static C_M_C_C_ACCOUNT_GENERATE_INPUT_CHANNEL: CMCCAccountGenerateInputChannel =
    LazyLock::new(signal_channel);

impl CmccAccountGenerateInput {
    pub fn get_dart_signal_receiver() -> SignalReceiver<DartSignal<Self>> {
        C_M_C_C_ACCOUNT_GENERATE_INPUT_CHANNEL.1.clone()
    }
}

impl CmccAccountGenerateOutput {
    pub fn send_signal_to_dart(&self) {
        let result = send_rust_signal(
            5,
            self.encode_to_vec(),
            Vec::new(),
        );
        if let Err(error) = result {
            debug_print!("{error}\n{self:?}");
        }
    }
}
