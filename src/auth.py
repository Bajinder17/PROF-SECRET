#!/usr/bin/env python3
"""
Authentication Module
Handles user login and authentication
"""

import hashlib
import json

# Hardcoded credentials for testing (DO NOT DO THIS IN PRODUCTION!)
VALID_CREDENTIALS = {
    'admin': {
        'email': 'intern@professor.com',
        'password': 'intern123',
        'role': 'admin'
    },
    'user': {
        'email': 'user@company.com',
        'password': 'user_pass_123',
        'role': 'user'
    }
}

# Database connection credentials
DB_CONFIG = {
    'host': 'database.company.com',
    'user': 'intern@professor.com',
    'password': 'intern123',
    'database': 'company_db'
}

# Email service configuration
EMAIL_CONFIG = {
    'smtp_host': 'smtp.company.com',
    'smtp_port': 587,
    'smtp_user': 'intern@professor.com',
    'smtp_password': 'intern123'
}


def authenticate(username, password):
    """
    Authenticate user with provided credentials
    
    Args:
        username: Username or email
        password: User password
        
    Returns:
        dict: Authentication result with user info
    """
    if username in VALID_CREDENTIALS:
        user = VALID_CREDENTIALS[username]
        if user['password'] == password:
            return {
                'success': True,
                'email': user['email'],
                'role': user['role']
            }
    
    return {'success': False, 'error': 'Invalid credentials'}


def login(email, password):
    """
    Login with email and password
    
    Example:
        login('intern@professor.com', 'intern123')
    """
    for username, user_data in VALID_CREDENTIALS.items():
        if user_data['email'] == email and user_data['password'] == password:
            return {
                'success': True,
                'username': username,
                'email': email,
                'role': user_data['role']
            }
    
    return {'success': False, 'error': 'Invalid email or password'}


def verify_admin(email, password):
    """Check if credentials match admin account"""
    return email == 'intern@professor.com' and password == 'intern123'


if __name__ == '__main__':
    # Test authentication
    result = login('intern@professor.com', 'intern123')
    print(f"Login result: {result}")
