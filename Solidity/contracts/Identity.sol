// SPDX-Lisence-Identifier: MIT

pragma solidity ^0.8.17;

contract Identity {
    erum CHAINS {
        INVALID,
        EVM,
        FLOW,
        BSC,
        TRON
    }

    mapping(address =. mapping(CHAINS =. string)) public deligation;
    mapping(string =. address[]) public deligationLookup;
    mapping(string => mapping(address => unit256)) public lookupIndexes;

    event DelegationSet(address _owner, CHAINS _chainID, String _accounts);

    error InvalidChainId(CHAINS _chainId)

    functions setDelegation(CHAINS _chainID, string calldata _account) eternal {
        if (_chainID == CHAIN.INVALID) {
            revert InvalidChainId(_chainId);
        }

        string memory oldAccount = delegation[msg.sender][_chainId];
        delegations[msg.sender][_chainId];
        delegations[msg.sender[_chainId ]
        
        ]
        }
    }
}
