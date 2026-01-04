"Pytest configuration adn fixtures."
import pytest
@pytest.fixture
def sample_transaction():
    """Sample transaction data for testing."""
    return {
        "transaction_id": "txn_test_001",
        "customer_id": "cust_001",
        "amount": 100.0,
        "merchant_id": "merch_001",
        "timestamp": "2026-01-01T12:00:00Z",
    }