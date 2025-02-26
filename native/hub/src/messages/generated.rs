#![allow(unused_imports)]
#![allow(unused_mut)]

use super::*;
use prost::Message;
use rinf::{DartSignal, RinfError};
use std::collections::HashMap;
use std::sync::LazyLock;

type Handler = dyn Fn(&[u8], &[u8]) -> Result<(), RinfError> + Send + Sync;
type DartSignalHandlers = HashMap<i32, Box<Handler>>;
static DART_SIGNAL_HANDLERS: LazyLock<DartSignalHandlers> = LazyLock::new(|| {
    let mut hash_map: DartSignalHandlers = HashMap::new();
hash_map.insert(
    1,
    Box::new(|message_bytes: &[u8], binary: &[u8]| {
        let message =
            SsoAccountLoginInput::decode(message_bytes)
            .map_err(|_| RinfError::CannotDecodeMessage)?;
        let dart_signal = DartSignal {
            message,
            binary: binary.to_vec(),
        };
        S_S_O_ACCOUNT_LOGIN_INPUT_CHANNEL.0.send(dart_signal);
        Ok(())
    }),
);
hash_map.insert(
    2,
    Box::new(|message_bytes: &[u8], binary: &[u8]| {
        let message =
            EduAccountLoginInput::decode(message_bytes)
            .map_err(|_| RinfError::CannotDecodeMessage)?;
        let dart_signal = DartSignal {
            message,
            binary: binary.to_vec(),
        };
        E_D_U_ACCOUNT_LOGIN_INPUT_CHANNEL.0.send(dart_signal);
        Ok(())
    }),
);
hash_map.insert(
    4,
    Box::new(|message_bytes: &[u8], binary: &[u8]| {
        let message =
            CmccAccountGenerateInput::decode(message_bytes)
            .map_err(|_| RinfError::CannotDecodeMessage)?;
        let dart_signal = DartSignal {
            message,
            binary: binary.to_vec(),
        };
        C_M_C_C_ACCOUNT_GENERATE_INPUT_CHANNEL.0.send(dart_signal);
        Ok(())
    }),
);
hash_map.insert(
    6,
    Box::new(|message_bytes: &[u8], binary: &[u8]| {
        let message =
            GradesInput::decode(message_bytes)
            .map_err(|_| RinfError::CannotDecodeMessage)?;
        let dart_signal = DartSignal {
            message,
            binary: binary.to_vec(),
        };
        GRADES_INPUT_CHANNEL.0.send(dart_signal);
        Ok(())
    }),
);
hash_map.insert(
    9,
    Box::new(|message_bytes: &[u8], binary: &[u8]| {
        let message =
            WeChatGradesInput::decode(message_bytes)
            .map_err(|_| RinfError::CannotDecodeMessage)?;
        let dart_signal = DartSignal {
            message,
            binary: binary.to_vec(),
        };
        WE_CHAT_GRADES_INPUT_CHANNEL.0.send(dart_signal);
        Ok(())
    }),
);
hash_map.insert(
    12,
    Box::new(|message_bytes: &[u8], binary: &[u8]| {
        let message =
            WeChatRankInput::decode(message_bytes)
            .map_err(|_| RinfError::CannotDecodeMessage)?;
        let dart_signal = DartSignal {
            message,
            binary: binary.to_vec(),
        };
        WE_CHAT_RANK_INPUT_CHANNEL.0.send(dart_signal);
        Ok(())
    }),
);
hash_map.insert(
    15,
    Box::new(|message_bytes: &[u8], binary: &[u8]| {
        let message =
            ICalendarInput::decode(message_bytes)
            .map_err(|_| RinfError::CannotDecodeMessage)?;
        let dart_signal = DartSignal {
            message,
            binary: binary.to_vec(),
        };
        I_CALENDAR_INPUT_CHANNEL.0.send(dart_signal);
        Ok(())
    }),
);
hash_map.insert(
    17,
    Box::new(|message_bytes: &[u8], binary: &[u8]| {
        let message =
            ICalendarWxInput::decode(message_bytes)
            .map_err(|_| RinfError::CannotDecodeMessage)?;
        let dart_signal = DartSignal {
            message,
            binary: binary.to_vec(),
        };
        I_CALENDAR_WX_INPUT_CHANNEL.0.send(dart_signal);
        Ok(())
    }),
);
hash_map.insert(
    18,
    Box::new(|message_bytes: &[u8], binary: &[u8]| {
        let message =
            WeChatTermsInput::decode(message_bytes)
            .map_err(|_| RinfError::CannotDecodeMessage)?;
        let dart_signal = DartSignal {
            message,
            binary: binary.to_vec(),
        };
        WE_CHAT_TERMS_INPUT_CHANNEL.0.send(dart_signal);
        Ok(())
    }),
);
hash_map.insert(
    20,
    Box::new(|message_bytes: &[u8], binary: &[u8]| {
        let message =
            LabDurationUserInput::decode(message_bytes)
            .map_err(|_| RinfError::CannotDecodeMessage)?;
        let dart_signal = DartSignal {
            message,
            binary: binary.to_vec(),
        };
        LAB_DURATION_USER_INPUT_CHANNEL.0.send(dart_signal);
        Ok(())
    }),
);
hash_map.insert(
    22,
    Box::new(|message_bytes: &[u8], binary: &[u8]| {
        let message =
            GetVersionInput::decode(message_bytes)
            .map_err(|_| RinfError::CannotDecodeMessage)?;
        let dart_signal = DartSignal {
            message,
            binary: binary.to_vec(),
        };
        GET_VERSION_INPUT_CHANNEL.0.send(dart_signal);
        Ok(())
    }),
);
    hash_map
});

pub fn assign_dart_signal(
    message_id: i32,
    message_bytes: &[u8],
    binary: &[u8]
) -> Result<(), RinfError> {
    let signal_handler = match DART_SIGNAL_HANDLERS.get(&message_id) {
        Some(inner) => inner,
        None => return Err(RinfError::NoSignalHandler),
    };
    signal_handler(message_bytes, binary)
}
