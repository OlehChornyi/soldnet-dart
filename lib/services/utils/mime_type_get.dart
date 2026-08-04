String mimeTypeGet(String extension) {
  switch (extension) {
    case '.jpg':
      return 'image/jpg';
    case '.jpeg':
      return 'image/jpeg';
    case '.png':
      return 'image/png';
    case '.gif':
      return 'image/gif';

    case '.mp4':
      return 'video/mp4';
    case '.mov':
      return 'video/mov';
    case '.avi':
      return 'video/avi';

    case '.pdf':
      return 'application/pdf';
    case '.doc':
      return 'application/msword';
    case '.docx':
      return 'application/vnd.openxmlformats-officedocument.wordprocessingml.document';
    case '.xls':
      return 'application/vnd.ms-excel';
    case '.xlsx':
      return 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet';

    default:
      return 'application/octet-stream';
  }
}
