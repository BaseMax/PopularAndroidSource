.class public final synthetic Lc/e/c/b/m;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@16.1.0"

# interfaces
.implements Lc/e/c/e/a;


# static fields
.field public static final a:Lc/e/c/b/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/e/c/b/m;

    invoke-direct {v0}, Lc/e/c/b/m;-><init>()V

    sput-object v0, Lc/e/c/b/m;->a:Lc/e/c/b/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/e/c/e/a;
    .locals 1

    sget-object v0, Lc/e/c/b/m;->a:Lc/e/c/b/m;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
