package cirko.api.service;

import cirko.api.model.Attachment;

import java.util.List;

public interface AttachmentService {

    List<Attachment> getForDataId(Long dataId);

    Attachment insert(Attachment attachment);

    Attachment update(Attachment attachment);

    boolean delete(Attachment attachment);

}
