.class final Lcab/snapp/b$2;
.super Lcab/snapp/snappnetwork/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/snappnetwork/a/a<",
        "Lcab/snapp/snappnetwork/model/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/b;


# direct methods
.method constructor <init>(Lcab/snapp/b;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcab/snapp/b$2;->a:Lcab/snapp/b;

    invoke-direct {p0}, Lcab/snapp/snappnetwork/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcab/snapp/snappnetwork/a/a;->onSuccess(Lcab/snapp/snappnetwork/model/f;)V

    return-void
.end method
