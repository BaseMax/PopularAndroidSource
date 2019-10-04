.class public Lir/cafebazaar/inline/ux/audio/MusicDescriptor;
.super Ljava/lang/Object;
.source "MusicDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lir/cafebazaar/inline/ux/audio/MusicDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/graphics/Bitmap;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf/a/a/g/b/j;

    invoke-direct {v0}, Lf/a/a/g/b/j;-><init>()V

    sput-object v0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->a:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->c:Ljava/lang/String;

    .line 14
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->d:Landroid/graphics/Bitmap;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->e:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->f:J

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 9
    invoke-direct/range {v0 .. v8}, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->a:I

    .line 3
    iput-object p2, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->d:Landroid/graphics/Bitmap;

    .line 6
    iput-object p5, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->e:Ljava/lang/String;

    .line 7
    iput-wide p6, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->f:J

    .line 8
    iput-object p8, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->f:J

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->d:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->g:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->g:Ljava/lang/String;

    return-void
.end method

.method public c()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->f:J

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->b:Ljava/lang/String;

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->a:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->b:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5
    iget-object p2, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-wide v0, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 7
    iget-object p2, p0, Lir/cafebazaar/inline/ux/audio/MusicDescriptor;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
