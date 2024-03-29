// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {LibDiamond} from "../../libraries/LibDiamond.sol";
import {LibMeta} from "../../libraries/LibMeta.sol";
import "../structs/AppStorage.sol";

contract AppStorageFacet {
    AppStorage internal s;

    function appStorage() internal pure returns (AppStorage storage ds) {
        assembly {
            ds.slot := 0
        }
    }
}

contract Modifiers {
    AppStorage internal s;
}
