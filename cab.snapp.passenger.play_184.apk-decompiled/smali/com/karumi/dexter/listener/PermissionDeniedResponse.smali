.class public final Lcom/karumi/dexter/listener/PermissionDeniedResponse;
.super Ljava/lang/Object;


# instance fields
.field private final permanentlyDenied:Z

.field private final requestedPermission:Lcom/karumi/dexter/listener/PermissionRequest;


# direct methods
.method public constructor <init>(Lcom/karumi/dexter/listener/PermissionRequest;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/karumi/dexter/listener/PermissionDeniedResponse;->requestedPermission:Lcom/karumi/dexter/listener/PermissionRequest;

    iput-boolean p2, p0, Lcom/karumi/dexter/listener/PermissionDeniedResponse;->permanentlyDenied:Z

    return-void
.end method

.method public static from(Ljava/lang/String;Z)Lcom/karumi/dexter/listener/PermissionDeniedResponse;
    .locals 2

    new-instance v0, Lcom/karumi/dexter/listener/PermissionDeniedResponse;

    new-instance v1, Lcom/karumi/dexter/listener/PermissionRequest;

    invoke-direct {v1, p0}, Lcom/karumi/dexter/listener/PermissionRequest;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/karumi/dexter/listener/PermissionDeniedResponse;-><init>(Lcom/karumi/dexter/listener/PermissionRequest;Z)V

    return-object v0
.end method


# virtual methods
.method public final getPermissionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/karumi/dexter/listener/PermissionDeniedResponse;->requestedPermission:Lcom/karumi/dexter/listener/PermissionRequest;

    invoke-virtual {v0}, Lcom/karumi/dexter/listener/PermissionRequest;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestedPermission()Lcom/karumi/dexter/listener/PermissionRequest;
    .locals 1

    iget-object v0, p0, Lcom/karumi/dexter/listener/PermissionDeniedResponse;->requestedPermission:Lcom/karumi/dexter/listener/PermissionRequest;

    return-object v0
.end method

.method public final isPermanentlyDenied()Z
    .locals 1

    iget-boolean v0, p0, Lcom/karumi/dexter/listener/PermissionDeniedResponse;->permanentlyDenied:Z

    return v0
.end method
