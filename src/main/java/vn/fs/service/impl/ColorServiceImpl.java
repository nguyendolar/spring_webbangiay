package vn.fs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.fs.entities.Color;
import vn.fs.repository.ColorRepository;
import vn.fs.service.ColorService;

import java.util.List;

@Service
public class ColorServiceImpl implements ColorService {
    @Autowired
    ColorRepository colorRepository;

    @Override
    public List<Color> findAll() {
        return colorRepository.findAll();
    }

    @Override
    public Color findColorById(Long id) {
        return colorRepository.findColorById(id);
    }

    @Override
    public Color save(Color color) {
        return colorRepository.save(color);
    }
}
