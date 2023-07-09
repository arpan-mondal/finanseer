import Identity from 0xf8d6e0586b0a20c7

pub fun main(act: Address): [Identity.CHAINS] {
    let publicRef = getAccount(acct).getCapability(Identity.DelegationPublicPath)
    .borrow<&Identity.Delegations{Identity.DelegationsPublic}>()
    ?? panic ("Ouch owie this account dosent have a delegation there")

    return publicRef.getDelegatedChains()
    }
