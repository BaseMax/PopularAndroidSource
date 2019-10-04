.class public Lir/cafebazaar/inline/platform/InlineApplication;
.super Ljava/lang/Object;
.source "InlineApplication.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lir/cafebazaar/inline/platform/InlineApplication;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lir/cafebazaar/inline/platform/InlineUser;

.field public final b:Lf/a/a/d/f;

.field public c:Lf/a/a/g/i/f;

.field public d:Lf/a/a/g/f/a/b;

.field public e:Lf/a/a/a/b/a;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:Lir/cafebazaar/inline/ui/Theme;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/d/c;

    invoke-direct {v0}, Lf/a/a/d/c;-><init>()V

    sput-object v0, Lir/cafebazaar/inline/platform/InlineApplication;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lf/a/a/d/a/b;

    invoke-direct {v0}, Lf/a/a/d/a/b;-><init>()V

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->b:Lf/a/a/d/f;

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->d:Lf/a/a/g/f/a/b;

    .line 17
    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->e:Lf/a/a/a/b/a;

    .line 18
    new-instance v0, Lir/cafebazaar/inline/ui/Theme;

    invoke-direct {v0}, Lir/cafebazaar/inline/ui/Theme;-><init>()V

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->h:Lir/cafebazaar/inline/ui/Theme;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->g:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->f:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->i:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->j:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lir/cafebazaar/inline/platform/InlineApplication;->k:Z

    .line 24
    const-class v0, Lir/cafebazaar/inline/platform/InlineUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lir/cafebazaar/inline/platform/InlineUser;

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->a:Lir/cafebazaar/inline/platform/InlineUser;

    .line 25
    const-class v0, Lir/cafebazaar/inline/ui/Theme;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lir/cafebazaar/inline/ui/Theme;

    iput-object p1, p0, Lir/cafebazaar/inline/platform/InlineApplication;->h:Lir/cafebazaar/inline/ui/Theme;

    .line 26
    new-instance p1, Lf/a/a/a/b/b;

    invoke-direct {p1}, Lf/a/a/a/b/b;-><init>()V

    iput-object p1, p0, Lir/cafebazaar/inline/platform/InlineApplication;->e:Lf/a/a/a/b/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf/a/a/d/a/b;

    invoke-direct {v0}, Lf/a/a/d/a/b;-><init>()V

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->b:Lf/a/a/d/f;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->d:Lf/a/a/g/f/a/b;

    .line 4
    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->e:Lf/a/a/a/b/a;

    .line 5
    new-instance v0, Lir/cafebazaar/inline/ui/Theme;

    invoke-direct {v0}, Lir/cafebazaar/inline/ui/Theme;-><init>()V

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->h:Lir/cafebazaar/inline/ui/Theme;

    .line 6
    iput-object p1, p0, Lir/cafebazaar/inline/platform/InlineApplication;->g:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lir/cafebazaar/inline/platform/InlineApplication;->f:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lir/cafebazaar/inline/platform/InlineApplication;->i:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lir/cafebazaar/inline/platform/InlineApplication;->j:Ljava/lang/String;

    .line 10
    new-instance p1, Lir/cafebazaar/inline/platform/InlineUser;

    invoke-direct {p1}, Lir/cafebazaar/inline/platform/InlineUser;-><init>()V

    iput-object p1, p0, Lir/cafebazaar/inline/platform/InlineApplication;->a:Lir/cafebazaar/inline/platform/InlineUser;

    .line 11
    iget-object p1, p0, Lir/cafebazaar/inline/platform/InlineApplication;->a:Lir/cafebazaar/inline/platform/InlineUser;

    iget-object p2, p0, Lir/cafebazaar/inline/platform/InlineApplication;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/platform/InlineUser;->a(Ljava/lang/String;)V

    .line 12
    new-instance p1, Lf/a/a/a/b/b;

    invoke-direct {p1}, Lf/a/a/a/b/b;-><init>()V

    iput-object p1, p0, Lir/cafebazaar/inline/platform/InlineApplication;->e:Lf/a/a/a/b/a;

    .line 13
    iput-boolean p5, p0, Lir/cafebazaar/inline/platform/InlineApplication;->k:Z

    return-void
.end method


# virtual methods
.method public a()Lf/a/a/a/b/a;
    .locals 1

    .line 6
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->e:Lf/a/a/a/b/a;

    return-object v0
.end method

.method public a(Lf/a/a/e/g;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->k:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lf/a/a/g/i/f;

    invoke-direct {v0, p1}, Lf/a/a/g/i/f;-><init>(Lf/a/a/e/g;)V

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->c:Lf/a/a/g/i/f;

    .line 4
    :cond_0
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->a:Lir/cafebazaar/inline/platform/InlineUser;

    invoke-virtual {v0, p1}, Lir/cafebazaar/inline/platform/InlineUser;->a(Lf/a/a/e/g;)V

    return-void
.end method

.method public a(Lf/a/a/e/g;Lf/a/a/d/a/a/c/b;)V
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/g/f/a/b;

    invoke-direct {v0, p1, p2}, Lf/a/a/g/f/a/b;-><init>(Lf/a/a/e/g;Lf/a/a/d/a/a/c/b;)V

    iput-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->d:Lf/a/a/g/f/a/b;

    return-void
.end method

.method public a(Lir/cafebazaar/inline/ui/Theme;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lir/cafebazaar/inline/platform/InlineApplication;->h:Lir/cafebazaar/inline/ui/Theme;

    return-void
.end method

.method public b()Lf/a/a/g/f/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->d:Lf/a/a/g/f/a/b;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->j:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->g:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->i:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lf/a/a/d/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->b:Lf/a/a/d/f;

    return-object v0
.end method

.method public h()Lf/a/a/g/i/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->c:Lf/a/a/g/i/f;

    return-object v0
.end method

.method public i()Lir/cafebazaar/inline/ui/Theme;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->h:Lir/cafebazaar/inline/ui/Theme;

    return-object v0
.end method

.method public j()Lir/cafebazaar/inline/platform/InlineUser;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->a:Lir/cafebazaar/inline/platform/InlineUser;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-boolean v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->k:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->a:Lir/cafebazaar/inline/platform/InlineUser;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 7
    iget-object v0, p0, Lir/cafebazaar/inline/platform/InlineApplication;->h:Lir/cafebazaar/inline/ui/Theme;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
