"""Tests for logging setup."""
from aerofraud.logging import get_logger, setup_logging


def test_setup_logging() -> None:
    """Test logging setup."""
    setup_logging("DEBUG")
    logger = get_logger(__name__)
    assert logger is not None


def test_get_logger() -> None:
    """Test logger retrieval."""
    logger = get_logger("test")
    assert logger is not None
