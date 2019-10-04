.class final Lcab/snapp/c/g$1;
.super Lcom/karumi/dexter/listener/multi/BaseMultiplePermissionsListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/c/g;->getPermission(Landroid/app/Activity;[Ljava/lang/String;Lcab/snapp/c/g$a;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/c/g$a;


# direct methods
.method constructor <init>(Lcab/snapp/c/g$a;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcab/snapp/c/g$1;->a:Lcab/snapp/c/g$a;

    invoke-direct {p0}, Lcom/karumi/dexter/listener/multi/BaseMultiplePermissionsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPermissionRationaleShouldBeShown(Ljava/util/List;Lcom/karumi/dexter/PermissionToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/karumi/dexter/listener/PermissionRequest;",
            ">;",
            "Lcom/karumi/dexter/PermissionToken;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-super {p0, p1, p2}, Lcom/karumi/dexter/listener/multi/BaseMultiplePermissionsListener;->onPermissionRationaleShouldBeShown(Ljava/util/List;Lcom/karumi/dexter/PermissionToken;)V

    return-void
.end method

.method public final onPermissionsChecked(Lcom/karumi/dexter/MultiplePermissionsReport;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Lcom/karumi/dexter/listener/multi/BaseMultiplePermissionsListener;->onPermissionsChecked(Lcom/karumi/dexter/MultiplePermissionsReport;)V

    .line 88
    iget-object v0, p0, Lcab/snapp/c/g$1;->a:Lcab/snapp/c/g$a;

    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {p1}, Lcom/karumi/dexter/MultiplePermissionsReport;->areAllPermissionsGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object p1, p0, Lcab/snapp/c/g$1;->a:Lcab/snapp/c/g$a;

    invoke-interface {p1}, Lcab/snapp/c/g$a;->onPermissionGranted()V

    return-void

    .line 97
    :cond_0
    invoke-virtual {p1}, Lcom/karumi/dexter/MultiplePermissionsReport;->getDeniedPermissionResponses()Ljava/util/List;

    move-result-object p1

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/karumi/dexter/listener/PermissionDeniedResponse;

    .line 101
    invoke-virtual {v1}, Lcom/karumi/dexter/listener/PermissionDeniedResponse;->getPermissionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcab/snapp/c/g$1;->a:Lcab/snapp/c/g$a;

    invoke-interface {p1, v0}, Lcab/snapp/c/g$a;->onPermissionDenied(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
