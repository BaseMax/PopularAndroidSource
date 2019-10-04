.class public final Lcab/snapp/snappdialog/SnappControllerDialog$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappdialog/SnappControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcab/snapp/snappdialog/SnappControllerDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Lcab/snapp/snappdialog/SnappControllerDialog;

    invoke-direct {v0}, Lcab/snapp/snappdialog/SnappControllerDialog;-><init>()V

    iput-object v0, p0, Lcab/snapp/snappdialog/SnappControllerDialog$a;->a:Lcab/snapp/snappdialog/SnappControllerDialog;

    return-void
.end method


# virtual methods
.method public final build()Lcab/snapp/snappdialog/SnappControllerDialog;
    .locals 1

    .line 474
    iget-object v0, p0, Lcab/snapp/snappdialog/SnappControllerDialog$a;->a:Lcab/snapp/snappdialog/SnappControllerDialog;

    invoke-static {v0}, Lcab/snapp/snappdialog/SnappControllerDialog;->a(Lcab/snapp/snappdialog/SnappControllerDialog;)V

    .line 475
    iget-object v0, p0, Lcab/snapp/snappdialog/SnappControllerDialog$a;->a:Lcab/snapp/snappdialog/SnappControllerDialog;

    return-object v0
.end method

.method public final setCancelable(Z)Lcab/snapp/snappdialog/SnappControllerDialog$a;
    .locals 1

    .line 451
    iget-object v0, p0, Lcab/snapp/snappdialog/SnappControllerDialog$a;->a:Lcab/snapp/snappdialog/SnappControllerDialog;

    invoke-virtual {v0, p1}, Lcab/snapp/snappdialog/SnappControllerDialog;->setCancelable(Z)V

    return-object p0
.end method

.method public final setController(Landroidx/fragment/app/Fragment;)Lcab/snapp/snappdialog/SnappControllerDialog$a;
    .locals 1

    .line 427
    iget-object v0, p0, Lcab/snapp/snappdialog/SnappControllerDialog$a;->a:Lcab/snapp/snappdialog/SnappControllerDialog;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/SnappControllerDialog;->a(Lcab/snapp/snappdialog/SnappControllerDialog;Landroidx/fragment/app/Fragment;)V

    return-object p0
.end method

.method public final setFragmentManager(Landroidx/fragment/app/FragmentManager;)Lcab/snapp/snappdialog/SnappControllerDialog$a;
    .locals 1

    .line 415
    iget-object v0, p0, Lcab/snapp/snappdialog/SnappControllerDialog$a;->a:Lcab/snapp/snappdialog/SnappControllerDialog;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/SnappControllerDialog;->a(Lcab/snapp/snappdialog/SnappControllerDialog;Landroidx/fragment/app/FragmentManager;)V

    return-object p0
.end method

.method public final setTag(Ljava/lang/String;)Lcab/snapp/snappdialog/SnappControllerDialog$a;
    .locals 1

    .line 439
    iget-object v0, p0, Lcab/snapp/snappdialog/SnappControllerDialog$a;->a:Lcab/snapp/snappdialog/SnappControllerDialog;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/SnappControllerDialog;->a(Lcab/snapp/snappdialog/SnappControllerDialog;Ljava/lang/String;)V

    return-object p0
.end method

.method public final showOnBuild(Z)Lcab/snapp/snappdialog/SnappControllerDialog$a;
    .locals 1

    .line 463
    iget-object v0, p0, Lcab/snapp/snappdialog/SnappControllerDialog$a;->a:Lcab/snapp/snappdialog/SnappControllerDialog;

    invoke-static {v0, p1}, Lcab/snapp/snappdialog/SnappControllerDialog;->a(Lcab/snapp/snappdialog/SnappControllerDialog;Z)V

    return-object p0
.end method
