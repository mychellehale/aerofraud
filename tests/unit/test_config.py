"""Tests for configuration."""
from aerofraud.config import Settings, get_settings


def test_settings_defaults() -> None:
    """
    Test default settings values.
    """
    settings = Settings()
    assert settings.app_name == "AeroFraud"
    assert settings.api_port == 8000
    assert settings.environment == "development"


def test_get_settings_cached() -> None:
    """Test settings caching."""
    settings1 = get_settings()
    settings2 = get_settings()
    assert settings1 is settings2
