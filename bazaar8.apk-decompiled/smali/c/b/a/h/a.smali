.class public final Lc/b/a/h/a;
.super Ljava/lang/Object;
.source "EmptySignature.java"

# interfaces
.implements Lc/b/a/c/c;


# static fields
.field public static final a:Lc/b/a/h/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/h/a;

    invoke-direct {v0}, Lc/b/a/h/a;-><init>()V

    sput-object v0, Lc/b/a/h/a;->a:Lc/b/a/h/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/b/a/h/a;
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/h/a;->a:Lc/b/a/h/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySignature"

    return-object v0
.end method
