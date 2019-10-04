.class public interface abstract Lc/c/a/e/d/i/e;
.super Ljava/lang/Object;
.source "DownloadInfoService.kt"


# virtual methods
.method public abstract a(Lcom/farsitel/bazaar/data/dto/requestdto/AppInstallInfoRequest;)Ll/b;
    .param p1    # Lcom/farsitel/bazaar/data/dto/requestdto/AppInstallInfoRequest;
        .annotation runtime Ll/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/dto/requestdto/AppInstallInfoRequest;",
            ")",
            "Ll/b<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/b/m;
        value = "rest-v1/process/InstallAppInfoRequest"
    .end annotation
.end method

.method public abstract a(Lcom/farsitel/bazaar/data/dto/requestdto/DownloadInfoRequestDto;)Ll/b;
    .param p1    # Lcom/farsitel/bazaar/data/dto/requestdto/DownloadInfoRequestDto;
        .annotation runtime Ll/b/a;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/dto/requestdto/DownloadInfoRequestDto;",
            ")",
            "Ll/b<",
            "Lcom/farsitel/bazaar/data/dto/responsedto/DownloadInfoResponseDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Ll/b/m;
        value = "rest-v1/process/AppDownloadInfoRequest"
    .end annotation
.end method
