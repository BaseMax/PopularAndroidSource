.class public Lir/cafebazaar/inline/ux/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lir/cafebazaar/inline/ux/permission/PermissionManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;

.field public b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lir/cafebazaar/inline/ux/permission/Permission;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lir/cafebazaar/inline/ux/permission/Permission;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lf/a/a/g/g/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/g/g/d;

    invoke-direct {v0}, Lf/a/a/g/g/d;-><init>()V

    sput-object v0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->b:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->c:Ljava/util/Set;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->d:Ljava/util/Set;

    .line 5
    new-instance v0, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;

    iget-object v1, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;-><init>(Ljava/util/Set;)V

    iput-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lir/cafebazaar/inline/ux/permission/PermissionManager;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    const-class v1, Lir/cafebazaar/inline/ux/permission/Permission;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 9
    iget-object v1, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->c:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;

    const-class v1, Lir/cafebazaar/inline/ux/permission/PermissionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "inline_permissions_pref"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    return-object p1
.end method

.method public a()Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;
    .locals 1

    .line 21
    iget-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lir/cafebazaar/inline/ux/permission/Permission;)Ljava/lang/String;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "__"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lf/a/a/e/g;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/a/e/g;",
            ")",
            "Ljava/util/Set<",
            "Lf/a/a/g/g/e;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 5
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 6
    invoke-interface {p1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v3

    invoke-virtual {v3}, Lir/cafebazaar/inline/platform/InlineApplication;->f()Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v4, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->d:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lf/a/a/g/g/e;

    .line 8
    invoke-virtual {v5}, Lf/a/a/g/g/e;->b()Lir/cafebazaar/inline/ux/permission/Permission;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a(Ljava/lang/String;Lir/cafebazaar/inline/ux/permission/Permission;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 9
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v5}, Lf/a/a/g/g/e;->b()Lir/cafebazaar/inline/ux/permission/Permission;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a(Ljava/lang/String;Lir/cafebazaar/inline/ux/permission/Permission;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 11
    invoke-virtual {v5}, Lf/a/a/g/g/e;->b()Lir/cafebazaar/inline/ux/permission/Permission;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    iget-object v2, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 13
    iget-object v2, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;

    invoke-virtual {v2, p1, v1}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->a(Lf/a/a/e/g;Ljava/util/Set;)V

    return-object v0
.end method

.method public a(Lf/a/a/e/g;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/a/e/g;",
            "Ljava/util/List<",
            "Lf/a/a/g/g/e;",
            ">;)V"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 15
    invoke-interface {p1}, Lf/a/a/e/g;->f()Lir/cafebazaar/inline/ui/InlineActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 16
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/a/a/g/g/e;

    .line 17
    iget-object v2, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->b:Ljava/util/Set;

    invoke-virtual {v1}, Lf/a/a/g/g/e;->b()Lir/cafebazaar/inline/ux/permission/Permission;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {p1}, Lf/a/a/e/g;->h()Lir/cafebazaar/inline/platform/InlineApplication;

    move-result-object v2

    invoke-virtual {v2}, Lir/cafebazaar/inline/platform/InlineApplication;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lf/a/a/g/g/e;->b()Lir/cafebazaar/inline/ux/permission/Permission;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a(Ljava/lang/String;Lir/cafebazaar/inline/ux/permission/Permission;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lir/cafebazaar/inline/ux/permission/Permission;",
            ">;)V"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/a/a/g/g/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf/a/a/g/g/e;

    .line 3
    iget-object v1, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->b:Ljava/util/Set;

    invoke-virtual {v0}, Lf/a/a/g/g/e;->b()Lir/cafebazaar/inline/ux/permission/Permission;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->c:Ljava/util/Set;

    .line 4
    invoke-virtual {v0}, Lf/a/a/g/g/e;->b()Lir/cafebazaar/inline/ux/permission/Permission;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->d:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->c:Ljava/util/Set;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 2
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v0, p0, Lir/cafebazaar/inline/ux/permission/PermissionManager;->a:Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;

    invoke-virtual {v0, p2}, Lir/cafebazaar/inline/ux/permission/PermissionDataHandler;->b(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
