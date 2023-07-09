import Idendity from 0xf8d6e0586b0a20c7

transactions(
    chainId: UInt8,
    address: String,
    ){
    let delegationsRef:Identity.Delegations?
    prepare(signer: AuthAccounts) {

        self.delegationsref = signer.barrow<&identity.delegation>(from: identity.delegationStoragePath)
        if (self.delegationRef != nil){
            log("already has an account")
            return
        }

        let delegation <- Idendity.createDelegations()
        signer.save(<-delegation, to: idendity.delegationStoragePath)

        signer.link<(Idendity.delegationPublic}.{
            idendity.delegationpublicpath,
            target: Identiyty.Delegationsstoragepath
        }

        self.delegationRef = signer.borrow<&idendity.Delegations>(from: Idendity.DelegationsStoragePaths)

    }   

        execute{
            self.delegationsRef!.set(chainid : chainid, address; address)
            log("Deleghations set !")
        }
    }
