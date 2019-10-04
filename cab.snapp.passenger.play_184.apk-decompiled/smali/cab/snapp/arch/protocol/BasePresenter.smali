.class public abstract Lcab/snapp/arch/protocol/BasePresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcab/snapp/arch/protocol/BaseView;",
        "I:",
        "Lcab/snapp/arch/protocol/BaseInteractor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected interactor:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "TI;>;"
        }
    .end annotation
.end field

.field public view:Lcab/snapp/arch/protocol/BaseView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcab/snapp/arch/protocol/BasePresenter;->interactor:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BaseInteractor;

    return-object v0
.end method

.method public getView()Lcab/snapp/arch/protocol/BaseView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcab/snapp/arch/protocol/BasePresenter;->view:Lcab/snapp/arch/protocol/BaseView;

    return-object v0
.end method

.method public setInteractor(Lcab/snapp/arch/protocol/BaseInteractor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcab/snapp/arch/protocol/BasePresenter;->interactor:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public setView(Lcab/snapp/arch/protocol/BaseView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcab/snapp/arch/protocol/BasePresenter;->view:Lcab/snapp/arch/protocol/BaseView;

    return-void
.end method
