package vn.fs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.fs.entities.Size;
import vn.fs.repository.SizeRepository;
import vn.fs.service.SizeService;

import java.util.List;

@Service
public class SizeServiceImpl implements SizeService {
    @Autowired
    SizeRepository sizeRepository;

    @Override
    public List<Size> findAll() {
        return sizeRepository.findAll();
    }

    @Override
    public Size findSizeById(Long id) {
        return sizeRepository.findSizeById(id);
    }

    @Override
    public Size save(Size size) {
        return sizeRepository.save(size);
    }
}
