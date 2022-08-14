package vn.fs.service;

import org.springframework.stereotype.Service;
import vn.fs.entities.Color;
import vn.fs.entities.Size;

import java.util.List;

@Service
public interface ColorService {
    List<Color> findAll();
    Color findColorById(Long id);
    Color save(Color color);
}
