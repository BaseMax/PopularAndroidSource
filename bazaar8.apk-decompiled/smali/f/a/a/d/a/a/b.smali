.class public Lf/a/a/d/a/a/b;
.super Ljava/lang/Object;
.source "PermissionRequestFactory.java"

# interfaces
.implements Lf/a/a/d/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lf/a/a/d/f;)Lf/a/a/d/a;
    .locals 1

    .line 1
    check-cast p1, Lorg/w3c/dom/Element;

    .line 2
    new-instance p2, Lf/a/a/g/g/e;

    const-string v0, "permission"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lir/cafebazaar/inline/ux/permission/Permission;->valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ux/permission/Permission;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lf/a/a/g/g/e;-><init>(Lir/cafebazaar/inline/ux/permission/Permission;Ljava/lang/String;)V

    return-object p2
.end method
