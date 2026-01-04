"Pytest configuration and fixtures."
import pytest


@pytest.fixture
def sample_transaction() -> dict[str, str | float]:
    """Sample transaction data for testing."""
    return {
        "transaction_id": "txn_test_001",
        "customer_id": "cust_001",
        "amount": 100.0,
    }
