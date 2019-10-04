.class public Lf/a/a/g/g/e;
.super Ljava/lang/Object;
.source "PermissionRequest.java"

# interfaces
.implements Lf/a/a/d/a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lir/cafebazaar/inline/ux/permission/Permission;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ux/permission/Permission;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\\s+"

    const-string v1, " "

    .line 2
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lf/a/a/g/g/e;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lf/a/a/g/g/e;->b:Lir/cafebazaar/inline/ux/permission/Permission;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/g/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lir/cafebazaar/inline/ux/permission/Permission;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/g/e;->b:Lir/cafebazaar/inline/ux/permission/Permission;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lf/a/a/g/g/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lf/a/a/g/g/e;

    invoke-virtual {p1}, Lf/a/a/g/g/e;->b()Lir/cafebazaar/inline/ux/permission/Permission;

    move-result-object p1

    invoke-virtual {p0}, Lf/a/a/g/g/e;->b()Lir/cafebazaar/inline/ux/permission/Permission;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inline-permission-request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf/a/a/g/g/e;->b()Lir/cafebazaar/inline/ux/permission/Permission;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
