package vn.fs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vn.fs.entities.Category;
import vn.fs.entities.Color;

@Repository
public interface ColorRepository extends JpaRepository<Color, Long> {

    Color findColorById(Long id);
}
