package com.example.hvderee.service;

import com.example.hvderee.model.Customer;

import java.util.List;
import java.util.Optional;

public interface CustomerService {
    List<Customer> findByCustomerAddress(String address);
    List<Customer> getAllCustomers();
    public Customer createCustomer(Customer customer);
    List<Customer> createCustomers(List<Customer> customers);
    public Optional<Customer> getCustomerById(Long id);
    public Customer updateCustomer(Customer customer);
    public String deleteCustomer(Long id);
}
