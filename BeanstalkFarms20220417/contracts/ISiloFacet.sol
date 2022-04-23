// SPDX-License-Identifier: UNLICENSED
// !! THIS FILE WAS AUTOGENERATED BY abi-to-sol v0.5.2. SEE SOURCE BELOW. !!
pragma solidity 0.8.4;

interface ISiloFacet {
    event BeanAllocation(address indexed account, uint256 beans);
    event BeanDeposit(address indexed account, uint256 season, uint256 beans);
    event BeanRemove(
        address indexed account,
        uint32[] crates,
        uint256[] crateBeans,
        uint256 beans
    );
    event BeanWithdraw(address indexed account, uint256 season, uint256 beans);
    event LPDeposit(
        address indexed account,
        uint256 season,
        uint256 lp,
        uint256 seeds
    );
    event LPRemove(
        address indexed account,
        uint32[] crates,
        uint256[] crateLP,
        uint256 lp
    );
    event LPWithdraw(address indexed account, uint256 season, uint256 lp);

    function addAndDepositLP(
        uint256 lp,
        uint256 buyBeanAmount,
        uint256 buyEthAmount,
        ISiloFacetStorage.V1IncreaseSilo memory al
    ) external payable;

    function balanceOfEth(address account) external view returns (uint256);

    function balanceOfFarmableBeans(address account)
    external
    view
    returns (uint256 beans);

    function balanceOfFarmableBeansV1(address account)
    external
    view
    returns (uint256 beans);

    function balanceOfFarmableBeansV2(uint256 roots)
    external
    view
    returns (uint256 beans);

    function balanceOfFarmableBeansV3(address account, uint256 accountStalk)
    external
    view
    returns (uint256 beans);

    function balanceOfFarmableSeeds(address account)
    external
    view
    returns (uint256);

    function balanceOfFarmableStalk(address account)
    external
    view
    returns (uint256);

    function balanceOfGrownStalk(address account)
    external
    view
    returns (uint256);

    function balanceOfPlentyBase(address account)
    external
    view
    returns (uint256);

    function balanceOfRainRoots(address account)
    external
    view
    returns (uint256);

    function balanceOfRoots(address account) external view returns (uint256);

    function balanceOfSeeds(address account) external view returns (uint256);

    function balanceOfStalk(address account) external view returns (uint256);

    function balanceOfUnclaimedRoots(address account)
    external
    view
    returns (uint256 uRoots);

    function beanDeposit(address account, uint32 id)
    external
    view
    returns (uint256);

    function beanWithdrawal(address account, uint32 i)
    external
    view
    returns (uint256);

    function buyAndDepositBeans(uint256 amount, uint256 buyAmount)
    external
    payable;

    function claimAddAndDepositLP(
        uint256 lp,
        uint256 buyBeanAmount,
        uint256 buyEthAmount,
        ISiloFacetStorage.V1IncreaseSilo memory al,
        LibClaim.Claim memory claim
    ) external payable;

    function claimAndDepositBeans(uint256 amount, LibClaim.Claim memory claim)
    external;

    function claimAndDepositLP(uint256 amount, LibClaim.Claim memory claim)
    external;

    function claimAndWithdrawBeans(
        uint32[] memory crates,
        uint256[] memory amounts,
        LibClaim.Claim memory claim
    ) external;

    function claimAndWithdrawLP(
        uint32[] memory crates,
        uint256[] memory amounts,
        LibClaim.Claim memory claim
    ) external;

    function claimBuyAndDepositBeans(
        uint256 amount,
        uint256 buyAmount,
        LibClaim.Claim memory claim
    ) external payable;

    function depositBeans(uint256 amount) external;

    function depositLP(uint256 amount) external;

    function lastSeasonOfPlenty() external view returns (uint32);

    function lastSupplyIncreases(address account)
    external
    view
    returns (uint32);

    function lastUpdate(address account) external view returns (uint32);

    function legacySupplyIncrease()
    external
    view
    returns (ISiloFacetStorage.V1IncreaseSilo memory);

    function lpDeposit(address account, uint32 id)
    external
    view
    returns (uint256, uint256);

    function lpWithdrawal(address account, uint32 i)
    external
    view
    returns (uint256);

    function proposedUntil(address account) external view returns (uint32);

    function seasonsOfPlenty()
    external
    view
    returns (ISiloFacetStorage.SeasonOfPlenty memory);

    function supplyIncreases() external view returns (uint32);

    function totalDepositedBeans() external view returns (uint256);

    function totalDepositedLP() external view returns (uint256);

    function totalFarmableBeans() external view returns (uint256);

    function totalRoots() external view returns (uint256);

    function totalSeeds() external view returns (uint256);

    function totalStalk() external view returns (uint256);

    function totalWithdrawnBeans() external view returns (uint256);

    function totalWithdrawnLP() external view returns (uint256);

    function unclaimedRoots() external view returns (uint256);

    function updateSilo(address account) external payable;

    function voted(address account) external view returns (bool);

    function votedUntil(address account) external view returns (uint32);

    function weth() external view returns (address);

    function withdrawBeans(uint32[] memory crates, uint256[] memory amounts)
    external;

    function withdrawLP(uint32[] memory crates, uint256[] memory amounts)
    external;
}

interface LibMarket {
    struct V1IncreaseSilo {
        uint256 beans;
        uint256 stalk;
        uint256 roots;
    }
}

interface LibClaim {
    struct Claim {
        uint32[] beanWithdrawals;
        uint32[] lpWithdrawals;
        uint256[] plots;
        bool claimEth;
        bool convertLP;
        uint256 minBeanAmount;
        uint256 minEthAmount;
        bool toWallet;
    }
}

interface ISiloFacetStorage {
    struct V1IncreaseSilo {
        uint256 beans;
        uint256 stalk;
        uint256 roots;
    }

    struct SeasonOfPlenty {
        uint256 weth;
        uint256 base;
        uint32 last;
    }
}