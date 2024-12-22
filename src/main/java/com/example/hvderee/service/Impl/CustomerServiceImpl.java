package com.example.hvderee.service.Impl;

import com.example.hvderee.model.Customer;
import com.example.hvderee.service.CustomerService;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
@Service
public class CustomerServiceImpl implements CustomerService {
    @Override
    public List<Customer> findByCustomerAddress(String address) {
        return List.of();
    }

    @Override
    public List<Customer> getAllCustomers() {
        return List.of();
    }

    @Override
    public Customer createCustomer(Customer customer) {
        return null;
    }

    @Override
    public List<Customer> createCustomers(List<Customer> customers) {
        return List.of();
    }

    @Override
    public Optional<Customer> getCustomerById(Long id) {
        return Optional.empty();
    }

    @Override
    public Customer updateCustomer(Customer customer) {
        return null;
    }

    @Override
    public String deleteCustomer(Long id) {
        return "";
    }
}
