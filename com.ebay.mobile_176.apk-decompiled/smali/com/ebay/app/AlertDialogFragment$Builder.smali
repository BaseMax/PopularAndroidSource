.class public Lcom/ebay/app/AlertDialogFragment$Builder;
.super Ljava/lang/Object;
.source "AlertDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/app/AlertDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final fields:Lcom/ebay/app/AlertDialogFragment$Fields;

.field private messageId:I

.field private negativeButtonTextId:I

.field private positiveButtonTextId:I

.field private titleId:I


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Lcom/ebay/app/AlertDialogFragment$Fields;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ebay/app/AlertDialogFragment$Fields;-><init>(Lcom/ebay/app/AlertDialogFragment$1;)V

    iput-object v0, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    const/4 v0, -0x1

    .line 259
    iput v0, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->titleId:I

    .line 260
    iput v0, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->messageId:I

    .line 261
    iput v0, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->positiveButtonTextId:I

    .line 262
    iput v0, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->negativeButtonTextId:I

    return-void
.end method


# virtual methods
.method public createFromActivity(I)Lcom/ebay/app/AlertDialogFragment;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x1L
            to = 0x8000L
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 354
    invoke-virtual {p0, p1, v0}, Lcom/ebay/app/AlertDialogFragment$Builder;->createFromFragment(ILandroidx/fragment/app/Fragment;)Lcom/ebay/app/AlertDialogFragment;

    move-result-object p1

    return-object p1
.end method

.method public createFromFragment(ILandroidx/fragment/app/Fragment;)Lcom/ebay/app/AlertDialogFragment;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x1L
            to = 0x8000L
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 395
    invoke-virtual {p0, p1, p2, v0}, Lcom/ebay/app/AlertDialogFragment$Builder;->createFromFragment(ILandroidx/fragment/app/Fragment;Landroid/os/Bundle;)Lcom/ebay/app/AlertDialogFragment;

    move-result-object p1

    return-object p1
.end method

.method public createFromFragment(ILandroidx/fragment/app/Fragment;Landroid/os/Bundle;)Lcom/ebay/app/AlertDialogFragment;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x1L
            to = 0x8000L
        .end annotation
    .end param

    .line 368
    new-instance v0, Lcom/ebay/app/AlertDialogFragment;

    invoke-direct {v0}, Lcom/ebay/app/AlertDialogFragment;-><init>()V

    if-nez p3, :cond_0

    .line 371
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string/jumbo v1, "title"

    .line 373
    iget-object v2, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v2}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$200(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "message"

    .line 374
    iget-object v2, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v2}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$300(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "positiveButtonText"

    .line 375
    iget-object v2, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v2}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$400(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "negativeButtonText"

    .line 376
    iget-object v2, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v2}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$500(Lcom/ebay/app/AlertDialogFragment$Fields;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "titleId"

    .line 377
    iget v2, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->titleId:I

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "messageId"

    .line 378
    iget v2, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->messageId:I

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "positiveButtonTextId"

    .line 379
    iget v2, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->positiveButtonTextId:I

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "negativeButtonTextId"

    .line 380
    iget v2, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->negativeButtonTextId:I

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "items"

    .line 381
    iget-object v2, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v2}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$600(Lcom/ebay/app/AlertDialogFragment$Fields;)[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    const-string v1, "checkedItems"

    .line 382
    iget-object v2, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v2}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$700(Lcom/ebay/app/AlertDialogFragment$Fields;)[Z

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    const-string v1, "messageAsWebview"

    .line 383
    iget-object v2, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v2}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$100(Lcom/ebay/app/AlertDialogFragment$Fields;)Z

    move-result v2

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "retainInstance"

    .line 384
    iget-object v2, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    iget-boolean v2, v2, Lcom/ebay/app/AlertDialogFragment$Fields;->retainInstance:Z

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "linksClickable"

    .line 385
    iget-object v2, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    iget-boolean v2, v2, Lcom/ebay/app/AlertDialogFragment$Fields;->linksClickable:Z

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "requestCode"

    .line 386
    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 387
    invoke-virtual {v0, p3}, Lcom/ebay/app/AlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 388
    invoke-virtual {v0, p2, p1}, Lcom/ebay/app/AlertDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    return-object v0
.end method

.method public setItems([Ljava/lang/String;)Lcom/ebay/app/AlertDialogFragment$Builder;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v0, p1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$602(Lcom/ebay/app/AlertDialogFragment$Fields;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setLinksClickable(Z)Lcom/ebay/app/AlertDialogFragment$Builder;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    iput-boolean p1, v0, Lcom/ebay/app/AlertDialogFragment$Fields;->linksClickable:Z

    return-object p0
.end method

.method public setMessage(I)Lcom/ebay/app/AlertDialogFragment$Builder;
    .locals 1

    .line 290
    iput p1, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->messageId:I

    .line 291
    iget-object p1, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$302(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v0, p1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$302(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessageAsWebview(Z)Lcom/ebay/app/AlertDialogFragment$Builder;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v0, p1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$102(Lcom/ebay/app/AlertDialogFragment$Fields;Z)Z

    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/String;[Z)Lcom/ebay/app/AlertDialogFragment$Builder;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v0, p1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$602(Lcom/ebay/app/AlertDialogFragment$Fields;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    .line 330
    iget-object p1, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {p1, p2}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$702(Lcom/ebay/app/AlertDialogFragment$Fields;[Z)[Z

    return-object p0
.end method

.method public setNegativeButton(I)Lcom/ebay/app/AlertDialogFragment$Builder;
    .locals 1

    .line 316
    iput p1, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->negativeButtonTextId:I

    .line 317
    iget-object p1, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$502(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v0, p1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$502(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPositiveButton(I)Lcom/ebay/app/AlertDialogFragment$Builder;
    .locals 1

    .line 303
    iput p1, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->positiveButtonTextId:I

    .line 304
    iget-object p1, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$402(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v0, p1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$402(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setRetainInstance(Z)Lcom/ebay/app/AlertDialogFragment$Builder;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    iput-boolean p1, v0, Lcom/ebay/app/AlertDialogFragment$Fields;->retainInstance:Z

    return-object p0
.end method

.method public setTitle(I)Lcom/ebay/app/AlertDialogFragment$Builder;
    .locals 1

    .line 277
    iput p1, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->titleId:I

    .line 278
    iget-object p1, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$202(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/ebay/app/AlertDialogFragment$Builder;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/ebay/app/AlertDialogFragment$Builder;->fields:Lcom/ebay/app/AlertDialogFragment$Fields;

    invoke-static {v0, p1}, Lcom/ebay/app/AlertDialogFragment$Fields;->access$202(Lcom/ebay/app/AlertDialogFragment$Fields;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method
