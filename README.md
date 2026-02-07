# Solidity FreeCodeCamp Course

Code written while following the [FreeCodeCamp 32-Hour Solidity & Blockchain Course](https://www.youtube.com/watch?v=gyMwXuJrbJQ) by Patrick Collins.

## What's Covered

This section of the course focuses on Solidity fundamentals:

- **Basic types** -- `uint256`, `string`, `struct`, `mapping`
- **Visibility and storage** -- `public`, `internal`, `memory` vs `storage`
- **Contract interaction** -- Deploying contracts from other contracts, calling external functions
- **Inheritance and overrides** -- Extending contracts with `is`, overriding functions with `virtual` / `override`

## Contracts

| File | Description |
|------|-------------|
| `SimpleStorage.sol` | Basic contract with storage, structs, arrays, and mappings |
| `StorageFactory.sol` | Factory pattern that deploys and interacts with SimpleStorage instances |
| `ExtraStorage.sol` | Inherits SimpleStorage and overrides the `store` function |

## Tech Stack

- Solidity 0.8.x
