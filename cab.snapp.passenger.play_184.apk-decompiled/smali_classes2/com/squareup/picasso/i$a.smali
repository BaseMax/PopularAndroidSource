.class final Lcom/squareup/picasso/i$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/squareup/picasso/i;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/squareup/picasso/i;)V
    .locals 0

    .line 463
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 464
    iput-object p2, p0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 468
    iget v2, v1, Landroid/os/Message;->what:I

    const-string v4, "canceled"

    const-string v6, "Dispatcher"

    packed-switch v2, :pswitch_data_0

    .line 518
    :pswitch_0
    sget-object v2, Lcom/squareup/picasso/Picasso;->a:Landroid/os/Handler;

    new-instance v3, Lcom/squareup/picasso/i$a$1;

    invoke-direct {v3, v0, v1}, Lcom/squareup/picasso/i$a$1;-><init>(Lcom/squareup/picasso/i$a;Landroid/os/Message;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 485
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 486
    iget-object v2, v0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/i;->a(Ljava/lang/Object;)V

    return-void

    .line 480
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 481
    iget-object v2, v0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    .line 6243
    iget-object v7, v2, Lcom/squareup/picasso/i;->h:Ljava/util/Set;

    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 6249
    iget-object v7, v2, Lcom/squareup/picasso/i;->e:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 6250
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/picasso/c;

    .line 6394
    iget-object v9, v8, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    .line 6251
    iget-boolean v9, v9, Lcom/squareup/picasso/Picasso;->n:Z

    .line 7390
    iget-object v10, v8, Lcom/squareup/picasso/c;->k:Lcom/squareup/picasso/a;

    .line 7398
    iget-object v11, v8, Lcom/squareup/picasso/c;->l:Ljava/util/List;

    if-eqz v11, :cond_1

    .line 6255
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    if-nez v10, :cond_2

    if-eqz v12, :cond_0

    :cond_2
    const-string v13, "\' was paused"

    const-string v14, "because tag \'"

    const-string v15, "paused"

    if-eqz v10, :cond_3

    .line 8109
    iget-object v3, v10, Lcom/squareup/picasso/a;->j:Ljava/lang/Object;

    .line 6262
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6263
    invoke-virtual {v8, v10}, Lcom/squareup/picasso/c;->a(Lcom/squareup/picasso/a;)V

    .line 6264
    iget-object v3, v2, Lcom/squareup/picasso/i;->g:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/squareup/picasso/a;->b()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_3

    .line 6266
    iget-object v3, v10, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    invoke-virtual {v3}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v15, v3, v5}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v12, :cond_5

    .line 6272
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    :goto_2
    if-ltz v3, :cond_5

    .line 6273
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/picasso/a;

    .line 9109
    iget-object v10, v5, Lcom/squareup/picasso/a;->j:Ljava/lang/Object;

    .line 6274
    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 6278
    invoke-virtual {v8, v5}, Lcom/squareup/picasso/c;->a(Lcom/squareup/picasso/a;)V

    .line 6279
    iget-object v10, v2, Lcom/squareup/picasso/i;->g:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/squareup/picasso/a;->b()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_4

    .line 6281
    iget-object v5, v5, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    invoke-virtual {v5}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v15, v5, v10}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 6289
    :cond_5
    invoke-virtual {v8}, Lcom/squareup/picasso/c;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6290
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    if-eqz v9, :cond_0

    .line 6292
    invoke-static {v8}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "all actions paused"

    invoke-static {v6, v4, v3, v5}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    return-void

    .line 514
    :pswitch_3
    iget-object v2, v0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    iget v1, v1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 12382
    :goto_3
    iput-boolean v1, v2, Lcom/squareup/picasso/i;->p:Z

    return-void

    .line 509
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 510
    iget-object v2, v0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/i;->a(Landroid/net/NetworkInfo;)V

    return-void

    .line 505
    :pswitch_5
    iget-object v1, v0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    .line 12366
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/squareup/picasso/i;->m:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12367
    iget-object v3, v1, Lcom/squareup/picasso/i;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 12368
    iget-object v3, v1, Lcom/squareup/picasso/i;->j:Landroid/os/Handler;

    iget-object v1, v1, Lcom/squareup/picasso/i;->j:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12369
    invoke-static {v2}, Lcom/squareup/picasso/i;->a(Ljava/util/List;)V

    return-void

    .line 500
    :pswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/squareup/picasso/c;

    .line 501
    iget-object v2, v0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/squareup/picasso/i;->a(Lcom/squareup/picasso/c;Z)V

    return-void

    .line 495
    :pswitch_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/squareup/picasso/c;

    .line 496
    iget-object v2, v0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    invoke-virtual {v2, v1}, Lcom/squareup/picasso/i;->b(Lcom/squareup/picasso/c;)V

    return-void

    .line 490
    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/squareup/picasso/c;

    .line 491
    iget-object v2, v0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    .line 9382
    iget v3, v1, Lcom/squareup/picasso/c;->h:I

    .line 9355
    invoke-static {v3}, Lcom/squareup/picasso/MemoryPolicy;->b(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 9356
    iget-object v3, v2, Lcom/squareup/picasso/i;->k:Lcom/squareup/picasso/d;

    .line 10378
    iget-object v4, v1, Lcom/squareup/picasso/c;->f:Ljava/lang/String;

    .line 11374
    iget-object v5, v1, Lcom/squareup/picasso/c;->m:Landroid/graphics/Bitmap;

    .line 9356
    invoke-interface {v3, v4, v5}, Lcom/squareup/picasso/d;->set(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 9358
    :cond_8
    iget-object v3, v2, Lcom/squareup/picasso/i;->e:Ljava/util/Map;

    .line 11378
    iget-object v4, v1, Lcom/squareup/picasso/c;->f:Ljava/lang/String;

    .line 9358
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9359
    invoke-virtual {v2, v1}, Lcom/squareup/picasso/i;->c(Lcom/squareup/picasso/c;)V

    .line 11394
    iget-object v2, v1, Lcom/squareup/picasso/c;->b:Lcom/squareup/picasso/Picasso;

    .line 9360
    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v2, :cond_9

    .line 9361
    invoke-static {v1}, Lcom/squareup/picasso/af;->a(Lcom/squareup/picasso/c;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "batched"

    const-string v3, "for completion"

    invoke-static {v6, v2, v1, v3}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void

    .line 475
    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/squareup/picasso/a;

    .line 476
    iget-object v2, v0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    .line 2081
    iget-object v3, v1, Lcom/squareup/picasso/a;->i:Ljava/lang/String;

    .line 1216
    iget-object v5, v2, Lcom/squareup/picasso/i;->e:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/picasso/c;

    if-eqz v5, :cond_a

    .line 1218
    invoke-virtual {v5, v1}, Lcom/squareup/picasso/c;->a(Lcom/squareup/picasso/a;)V

    .line 1219
    invoke-virtual {v5}, Lcom/squareup/picasso/c;->b()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1220
    iget-object v5, v2, Lcom/squareup/picasso/i;->e:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    iget-object v3, v1, Lcom/squareup/picasso/a;->a:Lcom/squareup/picasso/Picasso;

    .line 1221
    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v3, :cond_a

    .line 3073
    iget-object v3, v1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    .line 1222
    invoke-virtual {v3}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v4, v3}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    :cond_a
    iget-object v3, v2, Lcom/squareup/picasso/i;->h:Ljava/util/Set;

    .line 3109
    iget-object v5, v1, Lcom/squareup/picasso/a;->j:Ljava/lang/Object;

    .line 1227
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1228
    iget-object v3, v2, Lcom/squareup/picasso/i;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/squareup/picasso/a;->b()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4101
    iget-object v3, v1, Lcom/squareup/picasso/a;->a:Lcom/squareup/picasso/Picasso;

    .line 1229
    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v3, :cond_b

    .line 5073
    iget-object v3, v1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    .line 1230
    invoke-virtual {v3}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object v3

    const-string v5, "because paused request got canceled"

    invoke-static {v6, v4, v3, v5}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    :cond_b
    iget-object v2, v2, Lcom/squareup/picasso/i;->f:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/squareup/picasso/a;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/picasso/a;

    if-eqz v1, :cond_c

    .line 5101
    iget-object v2, v1, Lcom/squareup/picasso/a;->a:Lcom/squareup/picasso/Picasso;

    .line 1236
    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->n:Z

    if-eqz v2, :cond_c

    .line 6073
    iget-object v1, v1, Lcom/squareup/picasso/a;->b:Lcom/squareup/picasso/w;

    .line 1237
    invoke-virtual {v1}, Lcom/squareup/picasso/w;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "from replaying"

    invoke-static {v6, v4, v1, v2}, Lcom/squareup/picasso/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void

    .line 470
    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/squareup/picasso/a;

    .line 471
    iget-object v2, v0, Lcom/squareup/picasso/i$a;->a:Lcom/squareup/picasso/i;

    const/4 v3, 0x1

    .line 1176
    invoke-virtual {v2, v1, v3}, Lcom/squareup/picasso/i;->a(Lcom/squareup/picasso/a;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
