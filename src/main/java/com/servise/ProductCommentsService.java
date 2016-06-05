package com.servise;


import com.entity.Messenger;

import java.security.Principal;

public interface ProductCommentsService {

    void addCommentsFromProduct(Messenger messenger, int idProduct, Principal principal);

}
